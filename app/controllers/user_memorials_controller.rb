class UserMemorialsController < ApplicationController
  include Secured
  before_action :set_user
  before_action :set_user_memorial, only: [:show, :update, :destroy]

  # GET /user_memorials
  def index
    @user_memorials = UserMemorial.all

    render json: @user_memorials
  end

  # GET /user_memorials/1
  def show
    render json: @user_memorial
  end

  # POST /user_memorials
  def create
    @memorial = Memorial.find(params[:memorial_id])
    @user = User.find(@memorial[:user_id])
    @user_memorial = @memorial.user_memorials.new()
    @user_memorial.user = @user
    # @user_memorial = UserMemorial.new(user_memorial_params)

    if @user_memorial.save
      render json: @user_memorial, status: :created, location: @user_memorial
    else
      render json: @user_memorial.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_memorials/1
  def update
    if @user_memorial.update(user_memorial_params)
      render json: @user_memorial
    else
      render json: @user_memorial.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_memorials/1
  def destroy
    @user_memorial.destroy
  end

  # POST /user_memorials/join_memorial
  def join_memorial
    @memorial = Memorial.find_by(invite_link: params[:invite_link])
    if UserMemorial.where(memorial_id: @memorial[:uuid]).where(user_id: @user[:uuid]).present?
      render json: @memorial
    else
      @user_memorial = UserMemorial.new()
      @user_memorial.user = @user
      @user_memorial.memorial = @memorial
      if @user_memorial.save
        render json: @memorial, status: :created, location: @user_memorial
      else
        render json: @user_memorial.errors, status: :unprocessable_entity
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_memorial
      @user_memorial = UserMemorial.find(params[:id])
    end
    
    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    # Only allow a trusted parameter "white list" through.
    def user_memorial_params
      params.require(:user_memorial).permit(:user_id, :memorial_id, :permission)
    end
end
