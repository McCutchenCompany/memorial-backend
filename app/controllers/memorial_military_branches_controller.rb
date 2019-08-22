class MemorialMilitaryBranchesController < ApplicationController
  include Secured
  before_action :set_memorial_military_branch, only: [:show, :update]
  before_action :set_memorial
  before_action :set_user

  # GET /memorial_military_branches
  def index
    @memorial_military_branches = MemorialMilitaryBranch.all

    render json: @memorial_military_branches
  end

  # GET /memorial_military_branches/1
  def show
    render json: @memorial_military_branch
  end

  # POST /memorial_military_branches
  def create
    if @memorial && @memorial.can_access(@user)
      if @memorial.military_branches.where(uuid: params[:military_branch_id]).empty?
        MemorialMilitaryBranch.create({military_branch_id: params[:military_branch_id], memorial_id: @memorial[:uuid]})
        render json: @memorial.military_branches, only: [:uuid, :name, :image, :description]
      else
        render json: {error: "Branch already associated with Memorial"}, status: :unprocessable_entity
      end
    else
      render json: {error: "You do not have access to this Memorial"}, status: 422
    end
  end

  # PATCH/PUT /memorial_military_branches/1
  def update
    if @memorial_military_branch.update(memorial_military_branch_params)
      render json: @memorial_military_branch
    else
      render json: @memorial_military_branch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /memorial_military_branches/1
  def destroy
    if @memorial.can_access(@user)
      if @memorial_military_branch = @memorial.memorial_military_branches.find_by(military_branch_id: params[:military_branch_id])
        @memorial_military_branch.destroy
        render json: {success: "Branch removed"}
      else
        render json: {error: "An error occurred while deleting military branch"}, status: :unprocessable_entity
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorial_military_branch
      @memorial_military_branch = MemorialMilitaryBranch.find(params[:id])
    end

    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    def set_memorial
      @memorial = Memorial.find(params[:memorial_id])
    end

    # Only allow a trusted parameter "white list" through.
    def memorial_military_branch_params
      params.fetch(:memorial_military_branch, {})
    end
end
