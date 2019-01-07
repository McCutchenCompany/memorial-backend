class BillingController < ApplicationController
  include Secured

  before_action :set_user

  def purchase
    price = 6000 * params[:quantity]
    if (params.has_key?(:discount)) && params[:discount]
      price =  (price - (price * Discount.give_discount(params[:discount], @user[:uuid]))).round
    end

    Stripe.api_key = ENV['STRIPE_KEY'];

    token = params[:stripeToken]

    begin 
      stripeCharge = Stripe::Charge.create({
        amount: price,
        currency: 'usd',
        description: 'Test charge',
        source: token
      });
    rescue Stripe::CardError => e
      error = (e.to_s.sub /\(([^)]+)\)/, '').sub /\(([^)]+)\)/, ''
      render json: {error: error || "There was an error processing your payment"}, status: 500
    end
    if stripeCharge
      @charge = @user.charge.new({charge: stripeCharge[:amount]})
      @charge.save
      new_licenses = @user[:licenses] + params[:quantity];
      if @user.update({licenses: new_licenses})
        if @memorials = create_memorials(params[:quantity])
          if @user.update({licenses_in_use: @user[:licenses_in_use] + params[:quantity]})
            render json: {price: price, licenses: @user[:licenses], memorials: @memorials}
          end
        end
      end
    end
  end

  def generate_discounts
    if (auth_token[0]['sub'] == 'google-oauth2|108449982214054878210')
      percent = params[:percent].to_d / 100
      puts percent
      discount_params = {
        percent: percent,
        one_time_use: params[:one_time_use] || true
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
        puts percent
        @discounts = Discount.where(percent: percent, available: true).select("uuid, percent").map{|discount| {percent: discount[:percent] * 100, code: discount[:uuid]}}
        puts @discounts
      else
        @discounts = Discount.where(available: true).select("uuid, percent").map{|discount| {percent: discount[:percent] * 100, code: discount[:uuid]}}
      end
      render json: @discounts
    else
      render json: {error: "You do not have permission to get discounts"}, status: 402
    end
  end


  def create_memorials(quantity)
    @memorials = []
    quantity.times do |i|
      memorial = @user.memorial.create({})
      @memorials.push(memorial)
    end
    @memorials
  end

  private
  def set_user
    @user = User.find_by(auth0_id: auth_token[0]['sub'])
  end
end
