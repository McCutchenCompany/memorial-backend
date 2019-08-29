class MemorialsController < ApplicationController
  require 'uri'
  include Secured
  include Order
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
    :photos,
    :members,
    :military
  ]
  before_action :set_public_memorial, only: [
    :photo,
    :military
  ]

  skip_before_action :set_user, only: [:military]
  skip_before_action :authenticate_request!, only: [:military]

  # GET /memorials
  def index
    @pagination = {
      q: params[:q].nil? ? '' : params[:q],
      p: params[:p].nil? ? 1 : params[:p],
      per_p: params[:per_p].nil? ? 10 : params[:per_p],
      total: 0,
      order: {
        column: @order.column,
        dir: @order.direction
      }
    }
    @memorials = @user.memorials.select_without("user_id", "created_at", "updated_at", "organization_id", "invite_link")
      .reorder(@order.column  => @order.direction)
      .ransack(first_name_or_last_name_cont_any: @pagination[:q].split(" ")).result
    @pagination[:total] = @memorials.length
    @memorials = @memorials
      .paginate(page: @pagination[:p], per_page: @pagination[:per_p])
      response = {
        results: @memorials,
        pagination: @pagination
      }
    render json: response
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
        role: @memorial.role(@user),
        location: @location,
        timeline: @timeline,
        memories: @memories,
      }
      render json: @response
    end
  end

  # GET /memorials/:id/photos?approved=:approved&denied=:denied&waiting=:waiting&index=:index
  def photos
    if @memorial.nil?
      render json: {error: 'This memorial does not belong to you'}, status: 401
    else
      @all_photos = @memorial.photos
      @response = {}
      @response[:count] = {approved: @all_photos.select {|p| p[:published] == true}.count, denied: @all_photos.select {|p| p[:denied] == true }.count, need_approval: @all_photos.select {|p| p[:published] == false && p[:denied] == false }.count}
      if @memorial[:public_photo]
        @response[:photos] = @photos = Photo.map_users(@all_photos)[params[:index].to_i || 0..params[:index].to_i + 19]
      else
        if params[:approved].present? || params[:denied].present? || params[:waiting].present?
          if params[:approved].present?
            @response[:approved] = Photo.map_users(@all_photos.select {|p| p[:published] == true}[params[:approved].to_i || 0..params[:approved].to_i + 19])
          end
          if params[:denied].present?
            @response[:denied] = Photo.map_users(@all_photos.select {|p| p[:denied] == true }[params[:denied].to_i || 0..params[:denied].to_i + 19])
          end
          if params[:waiting].present?
            @response[:need_approval] = Photo.map_users(@all_photos.select {|p| p[:published] == false && p[:denied] == false }[params[:waiting].to_i || 0..params[:waiting].to_i + 19])
          end
        else
          @response[:approved] = Photo.map_users(@all_photos.select {|p| p[:published] == true}[params[:approved].to_i || 0..params[:approved].to_i + 19])
          @response[:denied] = Photo.map_users(@all_photos.select {|p| p[:denied] == true }[params[:denied].to_i || 0..params[:denied].to_i + 19])
          @response[:need_approval] = Photo.map_users(@all_photos.select {|p| p[:published] == false && p[:denied] == false }[params[:waiting].to_i || 0..params[:waiting].to_i + 19])
        end
      end
      render json: @response
    end
  end

  # POST /memorials
  def create
    @memorial = @user.memorial.new(memorial_params)

    if @memorial.save
      if @user.update({licenses_in_use: @user[:licenses_in_use] + 1})
        render json: @memorial, status: :created, location: @memorial
      end
    else
      render json: @memorial.errors, status: :unprocessable_entity
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
    if @memorial.unlocked
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
    else
      render json: {error: "Upgrade Memorial to add timeline items"}, status: :unprocessable_entity
    end
  end

  # PATCH /memorials/:id/update_timeline
  def update_timeline
    if @memorial.unlocked
      if Timeline.bulk_update(params[:timelines], @memorial[:uuid])
        render json: @memorial.timeline
      else
        render json: {error: 'Unable to save'}, status: :unprocessable_entity
      end
    else
      render json: {error: "Upgrade Memorial to add timeline items"}, status: :unprocessable_entity
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

  # POST /memorials/:id/photo
  def photo
    if @memorial.unlocked
      filename = URI.encode(params[:file].original_filename).gsub('%', '');
      s3 = Aws::S3::Resource.new(region: 'us-east-1')
      name = params[:id] + '/album/' + SecureRandom.hex(4) + '-' + filename
      
      obj = s3.bucket(ENV['S3_BUCKET']).object(name)

      image = convert_photo(params[:file].tempfile.path)
      File.open(params[:file].tempfile.path, "wb") do |file| 
        file.write image
      end

      # Upload the file
      obj.upload_file(params[:file].tempfile, acl: 'public-read')

      #Create an object for the upload
      if obj.public_url
        if @memorial.user.where(uuid: @user[:uuid])[0] || @memorial.org_user(@user)
          published = true;
        else
          published = false
        end
        @photo = @memorial.photos.new({asset_link: name, user_id: @user[:uuid], published: published, denied: false})
        if @photo.save
          if @memorial[:user_id] != @user[:uuid] && Photo.should_send_email(@photo, @user)
            memorial_user = User.find(@memorial[:user_id])
            AlbumUploadMailer.album_upload_email(memorial_user, @user, @photo).deliver
          end
          render json: Photo.map_single_user(@photo)
        else
          render json: @photo.errors, status: :unprocessable_entity
        end
      else
        render json: @memorial.errors, status: :unprocessable_entity
      end
    else
      render json: {error: 'Unlock the Memorial to add photos'}, status: :unprocessable_entity
    end
  end

  # PATCH /memorials/:id/approve_photo/:photo_id
  # params: photo_id, denied, published, title, description
  def approve_photo
    if @memorial
      if @memorial.unlocked
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
        render json: {error: "Unlock this Memorial to add photos"}, status: :unprocessable_entity
      end
    else
      render json: {error: 'This memorial does not belong to you'}, status: :unprocessable_entity
    end
  end

  # DELETE /memorials/1
  # def destroy
  #   @memorial.destroy
  # end

  # GET /memorials/:id/members
  def members
    if @memorial
      @pagination = {
        q: params[:q].nil? ? "" : params[:q],
        p: params[:p].nil? ? "1" : params[:p],
        per_p: params[:per_p].nil? ? "10" : params[:per_p],
        total: 0,
        order: {
          column: @order.column,
          dir: @order.direction
        }
      }
      @users = @memorial.users
      .reorder(@order.column  => @order.direction)
      .ransack(first_name_or_last_name_or_email_cont_any: @pagination[:q].split(" ")).result
      @pagination[:total] = @users.length
      @users = @users
        .paginate(page: @pagination[:p], per_page: @pagination[:per_p])
      user_memorials = []
      @users.each do |u|
        user_memorials << u.user_memorials.find_by(memorial_id: @memorial[:uuid])
      end
      user = user_memorials.as_json({
        include: [{user: {only: [:uuid, :first_name, :last_name, :email]}}, {role: {only: [:uuid, :name]}}]
      })
      users = []
      user.each do |u|
        entity = {
          uuid: u['user']['uuid'],
          first_name: u['user']['first_name'],
          last_name: u['user']['last_name'],
          email: u['user']['email'],
          roles: [u['role']]
        }
        users << entity
      end
      response = {
        organization: @memorial[:organization_id].present? ? Organization.where(uuid: @memorial[:organization_id]).select("uuid, name, address, image, posY, posX, scale, rot") : nil,
        results: users,
        pagination: @pagination
      }
      render json: response
    else
      render json: {error: 'You do not have access to this memorial'}, status: 422
    end
  end

  # GET memorials/:id/military
  def military
    if @memorial
      render json: @memorial.memorial_military_branches, 
        only: [:uuid, :start_date, :end_date], 
        include: [
          {
            mem_military_branches_medals: {
              include: {
                medal: {
                  only: [
                    :uuid, :name, :image
                  ]
                },
              },
              only: [
                :date_awarded, :description, :order, :uuid
              ]
            }
          },
          military_rank: {
            only: [
              :uuid, :name, :image
            ]
          },
          military_branch: {
            only: [
              :uuid, :name, :image, :description
            ]
          }
        ]
    else
      render json: {error: "This memorial does not exist"}, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorial
      if @user && @memorial = @user.memorials.find_by(uuid: params[:id])
        return
      else
        memorial = Memorial.find(params[:id])
        if memorial.org_user(@user)
          @memorial = memorial
        else
        end
      end
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
