class MilitaryBranchesController < ApplicationController
  before_action :set_military_branch, only: [:show, :update, :destroy, :medals]

  # GET /military_branches
  def index
    @military_branches = MilitaryBranch.all

    render json: @military_branches
  end

  # GET /military_branches/1
  def show
    render json: @military_branch
  end

  # GET /military_branches/1/medals
  def medals 
    if @military_branch
      branches = @military_branch.military_branch_medals.order(:order).reorder(:order)
      medals = []
      branches.each do |branch|
        medals << branch.medal
      end
      render json: medals.to_json(only: [:uuid, :name, :image])
    else
      render json: {error: "This is an invalid military branch"}, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_military_branch
      @military_branch = MilitaryBranch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def military_branch_params
      params.require(:military_branch).permit(:name, :image, :descprription)
    end
end
