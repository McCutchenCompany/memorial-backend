class TimelinesController < ApplicationController
  include Secured
  before_action :set_timeline, only: [:show, :update, :destroy, :file, :remove_file, :replace_file]

  # GET /timelines
  def index
    @timelines = Timeline.all

    render json: @timelines
  end

  # GET /timelines/1
  def show
    render json: @timeline
  end

  # POST /timelines
  def create
    @timeline = Timeline.new(timeline_params)

    if @timeline.save
      render json: @timeline, status: :created, location: @timeline
    else
      render json: @timeline.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /timelines/1
  def update
    if @timeline.update(timeline_params)
      @memorial = @timeline.memorial
      render json: @memorial.timeline
    else
      render json: @timeline.errors, status: :unprocessable_entity
    end
  end

  # DELETE /timelines/1
  def destroy
    if @timeline[:asset_type] == 'image' && @timeline[:asset_link]
      s3 = Aws::S3::Resource.new(region: 'us-east-1')
      if s3_response = s3.bucket(ENV['S3_BUCKET']).object(@timeline[:asset_link]).delete()
        @memorial = @timeline.memorial
        @timeline.destroy
        render json: @memorial.timeline.order(:date)
      else
        render json: {error: 'There was an error removing the image before deleting the entry'}, status: 500
      end
    else
      @memorial = @timeline.memorial
      @timeline.destroy
      render json: @memorial.timeline.order(:date)
    end
  end

  # POST /timelines/:id/file
  def file
    if @timeline
      filename = URI.encode(params[:file].original_filename).gsub('%', '');
      s3 = Aws::S3::Resource.new(region: 'us-east-1')
      name = @timeline[:memorial_id] + '/' + params[:id] + '/' + filename
      
      obj = s3.bucket(ENV['S3_BUCKET']).object(name)

      # Upload the file
      obj.upload_file(params[:file].tempfile, acl: 'public-read')

      #Create an object for the upload
      if obj.public_url && @timeline.update({asset_link: name, asset_type: params[:asset_type], posX: 0, posY: 0, scale: 100, rot: 0})
        @memorial = Memorial.find(@timeline[:memorial_id])
        @location = @memorial.location
        @fulltimeline = @memorial.timeline.order(:date)
        @response = {
          memorial: @memorial,
          location: @location,
          timeline: @fulltimeline
        }
        render json: @response
      else
        render json: @timeline.errors, status: :unprocessable_entity
      end
    else
      render json: {error: 'The timeline does not exist'}, status: :unprocessable_entity
    end
  end

  def remove_file
    if @timeline
      s3 = Aws::S3::Resource.new(region: 'us-east-1')
      s3_response = s3.bucket(ENV['S3_BUCKET']).object(params[:file]).delete()

      if @timeline.update({asset_link: nil, asset_type: nil, posX: 0, posY: 0, scale: 100, rot: 0})
        @memorial = Memorial.find(@timeline[:memorial_id])
        @location = @memorial.location
        @fulltimeline = @memorial.timeline.order(:date)
        @response = {
          memorial: @memorial,
          location: @location,
          timeline: @fulltimeline
        }
        render json: @response
      else
        render json: @timeline.errors, status: :unprocessable_entity
      end
    else 
      render json: {error: 'The timeline does not exist'}, status: :unprocessable_entity
    end
  end

  def replace_file
    if @timeline[:asset_link]
      s3 = Aws::S3::Resource.new(region: 'us-east-1')
      s3_response = s3.bucket(ENV['S3_BUCKET']).object(@timeline[:asset_link]).delete()

      if @timeline.update({asset_link: nil, asset_type: nil, posX: 0, posY: 0, scale: 100, rot: 0})
        file
      else
        render json: @timeline.errors, status: :unprocessable_entity
      end
    else 
      render json: {error: "The timeline entry either doesn't exist or does not have an asset"}, statsu: 404
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeline
      @timeline = Timeline.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def timeline_params
      params.require(:timeline).permit(
        :memorial_id,
        :date,
        :date_format,
        :description,
        :asset_link,
        :asset_type,
        :file,
        :event,
        :title,
        :posX,
        :posY,
        :scale,
        :rot
        )
    end
end
