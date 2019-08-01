class OrganizationsController < ApplicationController
  include Secured
  before_action :set_user
  before_action :set_organization, only: [:show, :update, :destroy]

  # GET /organizations
  def index
    @organizations = Organization.all

    render json: @organizations
  end

  # GET /organizations/1
  def show
    render json: @organization
  end

  # POST /organizations
  def create
    @organization = Organization.new(organization_params)
    @organization.user = @user

    if @organization.save
      render json: @organization, status: :created, location: @organization
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organizations/1
  def update
    if is_member
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
      if @organization.user[:uuid] == @user[:uuid]
        return true
      else
        return false
      end
    end

    def is_member
      if is_owner || @user.user_organization.where(organization_id: @organization[:uuid]).length > 0
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
