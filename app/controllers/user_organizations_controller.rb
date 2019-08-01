class UserOrganizationsController < ApplicationController
  include Secured
  before_action :set_user
  before_action :set_user_organization, only: [:show, :update, :destroy]

  # GET /user_organizations
  def index
    @member_orgs = @user.user_organization
    member_array = Array.new
    @member_orgs.each do |o|
      member_array << o.organization
    end
    @user_organizations = {
      owner: @user.organization,
      member: member_array
    }
    render json: @user_organizations
  end

  # GET /user_organizations/1
  def show
    render json: @user_organization
  end

  # POST /user_organizations
  def create
    @user_organization = UserOrganization.new(user_organization_params)

    if @user_organization.save
      render json: @user_organization, status: :created, location: @user_organization
    else
      render json: @user_organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_organizations/1
  def update
    if @user_organization.update(user_organization_params)
      render json: @user_organization
    else
      render json: @user_organization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_organizations/1
  def destroy
    @user_organization.destroy
  end

  # POST /user_organizations/join_org
  def join_org
    @organization = Organization.where(invite_link: params[:invite_link])[0]
    if @organization.user == @user || UserOrganization.where(organization_id: @organization[:uuid]).where(user_id: @user[:uuid])[0]
      render json: @organization
    else
      @user_organization = UserOrganization.new()
      @user_organization.user = @user
      @user_organization.organization = @organization
      if @user_organization.save
        render json: @organization, status: :created, location: @user_organization
      else
        render json: @user_organization.errors, status: :unprocessable_entity
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_organization
      @user_organization = UserOrganization.find(params[:id])
    end

    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    # Only allow a trusted parameter "white list" through.
    def user_organization_params
      params.require(:user_organization).permit(:user_id, :organization_id, :invite_link)
    end
end
