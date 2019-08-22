class MilitaryBranchMedalsController < ApplicationController
  before_action :set_military_branch_medal, only: [:show, :update, :destroy]

  # GET /military_branch_medals
  def index
    @military_branch_medals = MilitaryBranchMedal.all

    render json: @military_branch_medals
  end

  # GET /military_branch_medals/1
  def show
    render json: @military_branch_medal
  end

  # POST /military_branch_medals
  def create
    @military_branch_medal = MilitaryBranchMedal.new(military_branch_medal_params)

    if @military_branch_medal.save
      render json: @military_branch_medal, status: :created, location: @military_branch_medal
    else
      render json: @military_branch_medal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /military_branch_medals/1
  def update
    if @military_branch_medal.update(military_branch_medal_params)
      render json: @military_branch_medal
    else
      render json: @military_branch_medal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /military_branch_medals/1
  def destroy
    @military_branch_medal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_military_branch_medal
      @military_branch_medal = MilitaryBranchMedal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def military_branch_medal_params
      params.require(:military_branch_medal).permit(:military_branch_id, :medal_id, :order)
    end
end
