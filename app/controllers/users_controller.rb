class UsersController < ApplicationController
  include Secured
  before_action :set_user, only: [:update]

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: {user: @user, memorials: @user.memorial}
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def profile
    if @user = User.find_by(auth0_id: auth_token[0]['sub'])
      render json: {user: @user, memorials: @user.memorial, organizations: @user.organizations.select_without("user_id", "created_at", "updated_at", "customer_id", "card_brand", "card_last_four", "licenses", "licenses_in_use")}
    else
      @user = User.new({
        auth0_id: auth_token[0]['sub'],
        licenses: 0,
        licenses_in_use: 0,
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email]
      })
      if @user.save
        render json: {user: @user, memorials: @user.memorial, organizations: @user.organizations}, status: :created, location: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:auth0_id, :first_name, :last_name, :email)
    end
end
