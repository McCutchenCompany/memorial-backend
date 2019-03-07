class PhotosController < ApplicationController
  require 'uri'
  before_action :set_photo, only: [:show, :update, :destroy]
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :set_user_present, only: [:next_index]

  # GET /photos
  def index
    @photos = Photo.all

    render json: @photos
  end

  # GET /photos/1
  def show
    render json: @photo
  end

  # PATCH/PUT /photos/1
  def update
    @memorial = @photo.memorial
    if @user[:uuid] != @photo[:user_id] && @user[:uuid] != @memorial[:user_id]
      render json: {message: 'This photo does not belong to you'}, status: 422
    else
      if @photo.update(photo_params)
        render json: @photo
      else
        render json: @photo.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /photos/1
  def destroy
    if @photo
      if @user[:uuid] != @photo[:user_id] && @user[:uuid] != @memorial[:user_id]
        render json: {error: 'You do not have access to this photo'}, status: 422
      else
        s3 = Aws::S3::Resource.new(region: 'us-east-1')
        s3_response = s3.bucket(ENV['S3_BUCKET']).object(params[:file]).delete()
        photo_id = @photo[:uuid]
        @photo.destroy
        render json: {message: 'Photo removed', id: photo_id}
      end
    else 
      render json: {error: 'The photo does not exist'}, status: :unprocessable_entity
    end
  end

  # GET /photos/:memorial_id?index=:index
  def next_index
    @memorial = Memorial.find(params[:memorial_id])
    if @memorial
      if @memorial[:public_photo]
        @photos = Photo.map_users(@memorial.photos)
      else
        @photos = Photo.map_users(@memorial.photos.where("published = true OR user_id = ?", @user[:uuid]))
      end
      render json: @photos[params[:index].to_i..params[:index].to_i + 19]
    else
      render json: {error: 'This memorial does not exist'}, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    def set_user_present
      if request.headers['Authorization'].present?
        if authenticate_request!
          @user = User.find_by(auth0_id: auth_token[0]['sub'])
        end
      else
        @user = {uuid: nil}
      end
    end

    def authenticate_request!
      auth_token
    rescue JWT::VerificationError, JWT::DecodeError
      render json: { errors: ['Not Authenticated'] }, status: :unauthorized
    end
  
    def http_token
      if request.headers['Authorization'].present?
        request.headers['Authorization'].split(' ').last
      end
    end
  
    def auth_token
      JsonWebToken.verify(http_token)
    end

    # Only allow a trusted parameter "white list" through.
    def photo_params
      params.require(:photo).permit(:title, :description)
    end
end
