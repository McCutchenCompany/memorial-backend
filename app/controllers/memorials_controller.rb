class MemorialsController < ApplicationController
  require 'uri'
  include Secured
  before_action :set_user
  before_action :set_memorial, only: [:show, :update, :destroy, :location, :timeline, :image, :remove_image, :replace_image, :update_timeline]

  # GET /memorials
  def index
    @memorials = @user.memorial

    render json: @memorials
  end

  # GET /memorials/1
  def show
    if @memorial.nil?
      render json: {error: 'This memorial does not belong to you'}, status: 401
    else
      @location = @memorial.location
      @timeline = @memorial.timeline.reverse
      @response = {
        memorial: @memorial,
        location: @location,
        timeline: @timeline
      }
      render json: @response
    end
  end

  # POST /memorials
  def create
    if User.can_create(@user)
      puts 'User can create another memorial'
      @memorial = @user.memorial.new(memorial_params)

      if @memorial.save
        if @user.update({licenses_in_use: @user[:licenses_in_use] + 1})
          render json: @memorial, status: :created, location: @memorial
        end
      else
        render json: @memorial.errors, status: :unprocessable_entity
      end
    else
      puts 'User cannot create another memorial'
      render json: {error: "You must purchase another license to create another memorial"}, status: 401
    end
  end

  # PATCH/PUT /memorials/1
  def update
    if @memorial.update(memorial_params)
      render json: @memorial
    else
      render json: @memorial.errors, status: :unprocessable_entity
    end
  end

  # POST /memorials/:id/location
  def location
    if @memorial.location
      if @memorial.location.update({latitude: params[:latitude], longitude: params[:longitude], description: params[:description]})
        render json: @memorial.location
      else
        render json: @memorial.errors, status: :unprocessable_entity
      end
    else
      @location = Location.new({memorial_id: @memorial[:uuid], latitude: params[:latitude], longitude: params[:longitude], description: params[:description]})
      if @location.save
        render json: @memorial.location, status: :created
      else
        render json: @memorial.errors, status: :unprocessable_entity
      end
    end
  end

  # POST /memorials/:id/timeline
  def timeline
    if Timeline.create({
        memorial_id: @memorial[:uuid],
        description: params[:description],
        date: params[:date],
        date_format: params[:date_format],
        asset_link: params[:asset_link],
        asset_type: params[:asset_type]
      })
      render json: @memorial.timeline
    else
      render json: @memorial.errors, status: :unprocessable_entity
    end
  end

  # PATCH /memorials/:id/update_timeline
  def update_timeline
    if Timeline.bulk_update(params[:timelines], @memorial[:uuid])
      render json: @memorial.timeline
    else
      render json: {error: 'Unable to save'}, status: :unprocessable_entity
    end
  end

  # POST /memorials/:id/image
  def image
    if @memorial
      filename = URI.encode(params[:file].original_filename).gsub('%', '');
      s3 = Aws::S3::Resource.new(region: 'us-east-1')
      name = params[:id] + '/' + filename
      
      obj = s3.bucket(ENV['S3_BUCKET']).object(name)

      # Upload the file
      obj.upload_file(params[:file].tempfile, acl: 'public-read')

      #Create an object for the upload
      if obj.public_url && @memorial.update({image: name})
        render json: @memorial
      else
        render json: @memorial.errors, status: :unprocessable_entity
      end
    else
      render json: {error: 'The memorial does not exist'}, status: :unprocessable_entity
    end
  end

  # DELETE /memorials/:id/remove_image
  def remove_image
    if @memorial
      s3 = Aws::S3::Resource.new(region: 'us-east-1')
      s3_response = s3.bucket(ENV['S3_BUCKET']).object(params[:file]).delete()

      if @memorial.update({image: nil})
        render json: @memorial
      else
        render json: @memorial.errors, status: :unprocessable_entity
      end
    else 
      render json: {error: 'The memorial does not exist'}, status: :unprocessable_entity
    end
  end

  # PATCH /memorials/:id/replace_image
  def replace_image
    if @memorial[:image]
      s3 = Aws::S3::Resource.new(region: 'us-east-1')
      s3_response = s3.bucket(ENV['S3_BUCKET']).object(@memorial[:image]).delete()

      if @memorial.update({image: nil})
        image
      else
        render json: @memorial.errors, status: :unprocessable_entity
      end
    else
      render json: {error: `The memorial either doesn't exist or does not have an image`}, status: :unprocessable_entity
    end
  end

  # DELETE /memorials/1
  def destroy
    @memorial.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorial
      @memorial = Memorial.where(uuid: params[:id], user_id: @user[:uuid])[0]
    end

    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    # Only allow a trusted parameter "white list" through.
    def memorial_params
      params.require(:memorial).permit(
        :first_name,
        :middle_name,
        :last_name,
        :image,
        :birth_date,
        :death_date,
        :latitude,
        :longitude,
        :description,
        :date,
        :date_format,
        :asset_link,
        :asset_type,
        :user_id,
        :file,
        :timelines
      )
    end
end
