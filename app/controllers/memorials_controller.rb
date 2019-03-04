class MemorialsController < ApplicationController
  require 'uri'
  include Secured
  before_action :set_user
  before_action :set_memorial, only: [
    :show,
    :update,
    :destroy,
    :location,
    :timeline,
    :image,
    :remove_image,
    :replace_image,
    :update_timeline,
    :memories,
    :approve_photo,
    :photos
  ]
  before_action :set_public_memorial, only: [
    :photo
  ]

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
      @all_photos = @memorial.photos
      @location = @memorial.location
      @timeline = @memorial.timeline.reverse
      @memories = Memory.map_names(@memorial.memory)
      if @memorial[:public_photo]
        @photos = Photo.map_users(@all_photos).take(20)
      else
        @photos = {approved: Photo.map_users(@all_photos.select {|p| p[:published] == true}.take(20)), denied: Photo.map_users(@all_photos.select {|p| p[:denied] == true }.take(20)), need_approval: Photo.map_users(@all_photos.select {|p| p[:published] == false && p[:denied] == false }.take(20))}
      end
      @photos_count = {approved: @all_photos.select {|p| p[:published] == true}.count, denied: @all_photos.select {|p| p[:denied] == true }.count, need_approval: @all_photos.select {|p| p[:published] == false && p[:denied] == false }.count}
      @response = {
        memorial: @memorial,
        location: @location,
        timeline: @timeline,
        memories: @memories,
      }
      render json: @response
    end
  end

  # GET /memorials/:id/photos?approved=:approved&denied=:denied&waiting=:waiting
  def photos
    if @memorial.nil?
      render json: {error: 'This memorial does not belong to you'}, status: 401
    else
      @all_photos = @memorial.photos
      if @memorial[:public_photo]
        @photos = Photo.map_users(@all_photos).take(20)
      else
        @photos = {approved: Photo.map_users(@all_photos.select {|p| p[:published] == true}[params[:approved].to_i || 0..20]), denied: Photo.map_users(@all_photos.select {|p| p[:denied] == true }[params[:denied].to_i || 0..20]), need_approval: Photo.map_users(@all_photos.select {|p| p[:published] == false && p[:denied] == false }[params[:waiting].to_i || 0..20])}
      end
      @photos_count = {approved: @all_photos.select {|p| p[:published] == true}.count, denied: @all_photos.select {|p| p[:denied] == true }.count, need_approval: @all_photos.select {|p| p[:published] == false && p[:denied] == false }.count}
      render json: {album: {count: @photos_count, photos: @photos}}
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
      if @memorial.location.update({
        latitude: params[:latitude],
        longitude: params[:longitude],
        description: reverse_geocode
      })
        render json: @memorial.location
      else
        render json: @memorial.errors, status: :unprocessable_entity
      end
    else
      @location = Location.new({
        memorial_id: @memorial[:uuid],
        latitude: params[:latitude],
        longitude: params[:longitude],
        description: reverse_geocode
      })
      if @location.save
        render json: @location, status: :created
      else
        render json: @location.errors, status: :unprocessable_entity
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

      image = convert_img(params[:file].tempfile.path)
      File.open(params[:file].tempfile.path, "wb") do |file| 
        file.write image
      end

      # Upload the file
      obj.upload_file(params[:file].tempfile, acl: 'public-read')

      #Create an object for the upload
      if obj.public_url && @memorial.update({image: name, posX: 0, posY: 0, scale: 100, rot: 0})
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

      if @memorial.update({image: nil, posX: 0, posY: 0, scale: 100, rot: 0})
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

      if @memorial.update({image: nil, posX: 0, posY: 0, scale: 100, rot: 0})
        image
      else
        render json: @memorial.errors, status: :unprocessable_entity
      end
    else
      render json: {error: `The memorial either doesn't exist or does not have an image`}, status: :unprocessable_entity
    end
  end

  # POST /memorials/:id/memories
  def memories
    if @memorial
      if @memorial.memory.create({
        user_id: @user[:uuid],
        description: params[:description],
        title: params[:title],
        published: true
      })
        render json: Memory.map_names(@memorial.memory)
      else
        render json: @memorial.error, status: :unprocessable_entity
      end
    else
      @memorial = Memorial.find_by(uuid: params[:id])
      if @memory = @memorial.memory.create({
        user_id: @user[:uuid],
        description: params[:description],
        title: params[:title],
        published: false
      })
      if @memorial[:public_post]
        MemoryMailer.memory_email(User.find_by(uuid: @memorial[:user_id]), @user, @memory).deliver
      else
        MemoryMailer.memory_approval_email(User.find_by(uuid: @memorial[:user_id]), @user, @memory).deliver
      end
        render json: Memory.map_names(@memorial.memory.where("published = true OR user_id = ?", @user[:uuid]))
      else
        render json: @memorial.error, status: :unprocessable_entity
      end
    end
  end

  # POST /memorial/:id/photo
  def photo
    if @memorial
      filename = URI.encode(params[:file].original_filename).gsub('%', '');
      s3 = Aws::S3::Resource.new(region: 'us-east-1')
      name = params[:id] + '/album/' + filename
      
      obj = s3.bucket(ENV['S3_BUCKET']).object(name)

      image = convert_photo(params[:file].tempfile.path)
      File.open(params[:file].tempfile.path, "wb") do |file| 
        file.write image
      end

      # Upload the file
      obj.upload_file(params[:file].tempfile, acl: 'public-read')

      #Create an object for the upload
      if obj.public_url
        if @user[:uuid] == @memorial[:user_id]
          published = true;
        else
          published = false
        end
        @photo = @memorial.photos.new({asset_link: name, user_id: @user[:uuid], published: published, denied: false})
        if @photo.save
          render json: @photo
        else
          render json: @photo.errors, status: :unprocessable_entity
        end
      else
        render json: @memorial.errors, status: :unprocessable_entity
      end
    else
      render json: {error: 'The memorial does not exist'}, status: :unprocessable_entity
    end
  end

  # PATCH /memorials/:id/approve_photo/:photo_id
  # params: photo_id, denied, published, title, description
  def approve_photo
    if @memorial
      @photo = Photo.find(params[:photo_id])
      if @photo[:memorial_id] == @memorial[:uuid]
        if @photo.update(photo_params)
          render json: @photo
        else
          render json: @photo.error, status: :unprocessable_entity
        end
      else
        render json: {error: 'This photo does not belong with the memorial'}, status: :unprocessable_entity
      end
    else
      render json: {error: 'This memorial does not belong to you'}, status: :unprocessable_entity
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

    def set_public_memorial
      @memorial = Memorial.find(params[:id])
    end

    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    def convert_img(file)
      content = MiniMagick::Tool::Convert.new do |convert|
        convert << file
        convert.auto_orient
        convert.strip
        convert.resize("1180x665")
        convert.stdout
      end
      return content
    end

    def convert_photo(file)
      content = MiniMagick::Tool::Convert.new do |convert|
        convert << file
        convert.auto_orient
        convert.strip
        convert.resize("1180x665")
        convert.stdout
      end
      return content
    end

    def photo_params
      params.permit(
        :denied,
        :published,
        :title,
        :description
      )
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
        :timelines,
        :title,
        :published,
        :public_post,
        :public_photo,
        :posX,
        :posY,
        :scale,
        :rot
      )
    end
end
