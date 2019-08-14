class OrganizationsController < ApplicationController
  include Secured
  include Order
  before_action :set_user
  before_action :set_organization, only: [:show, :update, :destroy, :memorials, :memorial, :image, :replace_image, :remove_image]

  skip_before_action :set_user, only: [:index]
  skip_before_action :authenticate_request!, only: [:index]

  # GET /organizations
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
    @organizations = Organization.all
      .reorder(@order.column  => @order.direction)
      .ransack(name_or_address_cont_any: @pagination[:q].split(" ")).result
    @pagination[:total] = @organizations.length
    @organizations = @organizations
      .paginate(page: @pagination[:p], per_page: @pagination[:per_p])
    response = {
      results: @organizations.select_without("user_id", "created_at", "updated_at", "customer_id", "card_brand", "card_last_four", "licenses", "licenses_in_use"),
      pagination: @pagination
    }
    render json: response
  end

  # GET /organizations/1
  def show
    if is_member
      render json: @organization.except_keys("customer_id")
    else
      render json: {error: "You are not a member of this organization"}
    end
  end

  # GET /organizations/1/memorials
  def memorials
    if is_member
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
      @memorials = @organization.memorials
        .reorder(@order.column  => @order.direction)
        .ransack(first_name_or_last_name_cont_any: @pagination[:q].split(" ")).result
      @pagination[:total] = @memorials.length
      @memorials = @memorials
        .paginate(page: @pagination[:p], per_page: @pagination[:per_p])
        .select("uuid, first_name, middle_name, last_name, image, birth_date, death_date, unlocked")
      response = {
        results: @memorials,
        pagination: @pagination
      }
      render json: response
    else
      render json: {error: "You are not a member of this organization"}
    end
  end

  # POST /organization/:id/image
  def image
    if is_member
      if @organization
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
        if obj.public_url && @organization.update({image: name, posX: 0, posY: 0, scale: 100, rot: 0})
          render json: @organization
        else
          render json: @organization.errors, status: :unprocessable_entity
        end
      else
        render json: {error: 'The organization does not exist'}, status: :unprocessable_entity
      end
    else
      render json: {error: 'You are not a member of this organization'}, status: :unprocessable_entity
    end
  end

  # DELETE /organizations/:id/remove_image
  def remove_image
    if is_member
      if @organization
        s3 = Aws::S3::Resource.new(region: 'us-east-1')
        s3_response = s3.bucket(ENV['S3_BUCKET']).object(params[:file]).delete()

        if @organization.update({image: nil, posX: 0, posY: 0, scale: 100, rot: 0})
          render json: @organization
        else
          render json: @organization.errors, status: :unprocessable_entity
        end
      else 
        render json: {error: 'The organization does not exist'}, status: :unprocessable_entity
      end
    else
      render json: {error: 'You are not a member of this organization'}, status: :unprocessable_entity
    end
  end

  # PATCH /organizations/:id/replace_image
  def replace_image
    if is_member
      if @organization[:image]
        s3 = Aws::S3::Resource.new(region: 'us-east-1')
        s3_response = s3.bucket(ENV['S3_BUCKET']).object(@organization[:image]).delete()

        if @organization.update({image: nil, posX: 0, posY: 0, scale: 100, rot: 0})
          image
        else
          render json: @organization.errors, status: :unprocessable_entity
        end
      else
        render json: {error: `The organization either doesn't exist or does not have an image`}, status: :unprocessable_entity
      end
    else
      render json: {error: 'You are not a member of this organization'}, status: :unprocessable_entity
    end
  end

  # POST /organizations/1/memorial
  def memorial
    if is_member
      memorial = @organization.memorials.create({})
      if memorial
        render json: memorial
      else
        render json: memorial.errors, status: :unprocessable_entity
      end
    else
      render json: {error: "You are not a member of this organization"}
    end
  end

  # POST /organizations
  def create
    @organization = Organization.new(organization_params)
    
    if @organization.save
      @role = Role.find(ENV['OWNER_ROLE'])
      @organization.user_organizations.create({user_id: @user[:uuid], role: @role})
      render json: @organization, status: :created, location: @organization
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organizations/1
  def update
    if is_owner
      if @organization.update(organization_params)
        render json: @organization.select_without("customer_id")
      else
        render json: @organization.errors, status: :unprocessable_entity
      end
    else
      render json: {error: "Only an owner can edit an organization's details"}
    end
  end

  # DELETE /organizations/1
  def destroy
    @organization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    def is_owner
      if @organization.user_organizations.where(user_id: @user[:uuid]).where(role_id: ENV['OWNER_ROLE']).length > 0
        return true
      else
        return false
      end
    end

    def is_member
      if user_org = @organization.user_organizations.where(user_id: @user[:uuid])[0] 
        @role = Role.find(user_org[:role_id])
        if @role[:uuid] == ENV['OWNER_ROLE'] || @role[:uuid] == ENV['MEMBER_ROLE']
          return true
        else
          return false
        end
      else
        return false
      end
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

    # Only allow a trusted parameter "white list" through.
    def organization_params
      params.require(:organization).permit(:name, :description, :address, :latitude, :longitude, :invite_link)
    end
end
