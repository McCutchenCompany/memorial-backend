class OrganizationsController < ApplicationController
  include Secured
  include Order
  before_action :set_user
  before_action :set_organization, only: [:show, :update, :destroy, :memorials]

  # GET /organizations
  def index
    @organizations = Organization.all

    render json: @organizations
  end

  # GET /organizations/1
  def show
    render json: @organization
  end

  # GET /organizations/1/memorials
  def memorials
    if is_member
      @pagination = {
        q: params[:q],
        p: params[:p],
        per_p: params[:per_p],
        total: 0,
        order: {
          column: @order.column,
          dir: @order.direction
        }
      }
      @memorials = @organization.memorial
        .reorder(@order.column  => @order.direction)
        .ransack(first_name_or_last_name_cont_any: params[:q].split(" ")).result
      @pagination[:total] = @memorials.length
      @memorials = @memorials
        .paginate(page: params[:p], per_page: params[:per_p])
        .select("uuid, first_name, middle_name, last_name, image, birth_date, death_date")
      response = {
        results: @memorials,
        pagination: @pagination
      }
      render json: response
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
        render json: @organization
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
      @role = @organization.users.where(user_id: @user[:uuid])[0].role
      if @role[:uuid] == ENV['OWNER_ROLE'] || @role[:uuid] == ENV['MEMBER_ROLE']
        return true
      else
        return false
      end
    end

    # Only allow a trusted parameter "white list" through.
    def organization_params
      params.require(:organization).permit(:name, :description, :address, :latitude, :longitude, :invite_link)
    end
end
