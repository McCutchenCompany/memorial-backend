class BillingController < ApplicationController
  include Secured

  before_action :set_user, :set_org

  # POST /billing/purchase
  def purchase
    initialPrice = 6000
    price = initialPrice
    receipt = {}
    receipt[:price] = initialPrice / 100
    receipt[:quantity] = params[:quantity]
    if (params.has_key?(:discount)) && params[:discount]
      @discount = Discount.where(code: params[:discount])
      receipt[:discount_code] = params[:discount]
      receipt[:discount_percent] = @discount.pluck(:percent)[0]
      receipt[:discount_one_time] = @discount.pluck(:one_time_use)[0]
      price = Discount.give_discount(params[:quantity], initialPrice, params[:discount], @user[:uuid]).round
    elsif params[:quantity] > 1
      price = price + ((params[:quantity] - 1) * initialPrice)
    end
    receipt[:total] = (price / 100)

    if price / 100 != params[:price].to_i
      render json: {error: "The expected price did not match the calculated price"}, status: 500
    else
      unless price == 0
        Stripe.api_key = ENV['STRIPE_KEY'];

        token = params[:stripeToken]

        if @organization && @organization[:customer_id]
          chargeObj = {
            amount: price,
            currency: 'usd',
            description: "Memorial Purchase x#{params[:quantity]}",
            customer: @organization[:customer_id]
          }
        else
          chargeObj = {
            amount: price,
            currency: 'usd',
            description: "Memorial Purchase x#{params[:quantity]}",
            source: token
          }
        end

        begin 
          stripeCharge = Stripe::Charge.create(chargeObj);
        rescue Stripe::CardError => e
          error = (e.to_s.sub /\(([^)]+)\)/, '').sub /\(([^)]+)\)/, ''
          render json: {error: error || "There was an error processing your payment"}, status: 500
        end
      end
      if stripeCharge || price == 0
        if stripeCharge
          @charge = @user.charge.new({charge: stripeCharge[:amount]})
          PaymentReceiptMailer.payment_receipt(@user, receipt).deliver    
        else
          @charge = @user.charge.new({charge: 0})
          PaymentReceiptMailer.payment_receipt(@user, receipt).deliver      
        end
        @charge.save
        if @organization
          set_org_linceses(price)
        else
          set_user_licenses(price)
        end
      end
    end

  end

  def generate_discounts
    if (auth_token[0]['sub'] == 'google-oauth2|108449982214054878210')
      percent = params[:percent].to_d / 100
      discount_params = {
        percent: percent,
        one_time_use: params.has_key?(:one_time_use) ? params[:one_time_use] : true
      }
      if @discounts = Discount.generate(params[:num], discount_params)
        render json: @discounts, status: :created
      else
        render json: @discount.errors, status: :unprocessable_entity
      end
    else
      render json: {error: "You do not have permission to generate discounts"}, status: 402
    end 
  end

  def available_discounts
    if (auth_token[0]['sub'] == 'google-oauth2|108449982214054878210')
      puts params[:percent]
      if (params.has_key?(:percent)) && params[:percent]
        percent = params[:percent].to_d / 100
        @discounts = Discount.where(percent: percent, available: true).select("code, percent").map{|discount| {percent: discount[:percent] * 100, code: discount[:code]}}
      else
        @discounts = Discount.where(available: true).select("code, percent").map{|discount| {percent: discount[:percent] * 100, code: discount[:code]}}
      end
      render json: @discounts
    else
      render json: {error: "You do not have permission to get discounts"}, status: 402
    end
  end

  def check_discount
    if @discount = Discount.where(code: params[:id], available: true).select("code, percent, one_time_use").map{|discount| {percent: discount[:percent] * 100, code: discount[:code], one_time_use: discount[:one_time_use]}}[0]
      render json: @discount
    elsif @discount = Discount.where(code: params[:id], available: false)[0]
      render json: {message: "This code has already been used"}, status: 401
    else
      render json: {message: "This code does not exist"}, status: 404
    end
  end

  # POST /billing/:org_id/create_customer
  def create_customer
    if @organization = Organization.find(params[:id])
      Stripe.api_key = ENV['STRIPE_KEY']
      customer = Stripe::Customer.create({
        email: params[:email],
        source: params[:stripeToken]
      })
      if customer
        @organization.update({customer_id: customer[:id], card_brand: customer[:sources][:data][0][:brand], card_last_four: customer[:sources][:data][0][:last4]})
        render json: customer
      else
        render json: {error: "There was an error creating your billing account"}
      end
    else
      render json: {error: "This is not a valid organization"}
    end
  end

  # PUT /billing/:org_id/update_customer
  def update_customer
    if @organization = Organization.find(params[:id])
      if @organization.is_owner(@user)
        Stripe.api_key = ENV['STRIPE_KEY']
        customer = Stripe::Customer.update(
          @organization[:customer_id],
          {
            source: params[:stripeToken]
          }
        )
        if customer
          @organization.update({customer_id: customer[:id], card_brand: customer[:sources][:data][0][:brand], card_last_four: customer[:sources][:data][0][:last4]})
          render json: @organization.except_keys(:customer_id)
        else
          render json: {error: "There was an error creating your billing account"}
      end
      else
        render json: {error: "You are not the owner of this organization"}
      end
    else
      render json: {error: "Could not find organization"}
    end
  end

  # DELETE billing/:org_id/delete_customer
  def delete_card
    if @organization = Organization.find(params[:id])
      if @organization.is_owner(@user) && @organization[:customer_id].present?
        Stripe.api_key = ENV['STRIPE_KEY']
        customer = Stripe::Customer.retrieve(@organization[:customer_id])
        card = Stripe::Customer.delete_source(
          @organization[:customer_id],
          customer[:sources][:data][0][:id]
        )
        if card[:deleted]
          @organization.update({customer_id: nil, card_brand: nil, card_last_four: nil})
          render json: @organization.except_keys(:customer_id)
        else
          render json: {error: "There was an error creating your billing account"}
      end
      else
        render json: {error: "You are not the owner of this organization"}
      end
    else
      render json: {error: "Could not find organization"}
    end
  end

  def create_user_memorials(quantity)
    @memorials = []
    @role = Role.find(ENV['OWNER_ROLE'])
    quantity.times do |i|
      memorial = @user.memorials.create({})
      user_memorial = memorial.user_memorials.where(user_id: @user[:uuid])
      user_memorial.update({role_id: @role[:uuid]})
      @memorials.push(memorial)
    end
    @memorials
  end

  def create_org_memorials(quantity)
    @memorials = []
    quantity.times do |i|
      memorial = @organization.memorial.create({})
      @memorials.push(memorial)
    end
    @memorials
  end

  def set_user_licenses(price)
    new_licenses = @user[:licenses] + params[:quantity];
    if @user.update({licenses: new_licenses})
      if @memorials = create_user_memorials(params[:quantity])
        if @user.update({licenses_in_use: @user[:licenses_in_use] + params[:quantity]})
          render json: {price: price, licenses: @user[:licenses], memorials: @memorials}
        end
      end
    end
  end

  def set_org_linceses(price)
    new_licenses = @organization[:licenses] + params[:quantity];
    if @organization.update({licenses: new_licenses})
      if @memorials = create_org_memorials(params[:quantity])
        if @organization.update({licenses_in_use: @organization[:licenses_in_use] + params[:quantity]})
          render json: {price: price, licenses: @organization[:licenses], memorials: @memorials}
        end
      end
    end
  end

  private
  def set_user
    @user = User.find_by(auth0_id: auth_token[0]['sub'])
  end

  def set_org
    if params[:org_id].present? 
      @organization = Organization.find(params[:org_id])
    else
      @organization = nil
    end
  end
end
