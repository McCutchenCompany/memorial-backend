class MemMilitaryBranchesMedalsController < ApplicationController
  before_action :set_mem_military_branches_medal, only: [:show, :update, :destroy]

  # GET /mem_military_branches_medals
  def index
    @mem_military_branches_medals = MemMilitaryBranchesMedal.all

    render json: @mem_military_branches_medals
  end

  # GET /mem_military_branches_medals/1
  def show
    render json: @mem_military_branches_medal
  end

  # POST /mem_military_branches_medals
  def create
    @mem_military_branches_medal = MemMilitaryBranchesMedal.new(mem_military_branches_medal_params)

    if @mem_military_branches_medal.save
      render json: @mem_military_branches_medal, status: :created, location: @mem_military_branches_medal
    else
      render json: @mem_military_branches_medal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mem_military_branches_medals/1
  def update
    if @mem_military_branches_medal.update(mem_military_branches_medal_params)
      render json: @mem_military_branches_medal
    else
      render json: @mem_military_branches_medal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mem_military_branches_medals/1
  def destroy
    @mem_military_branches_medal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mem_military_branches_medal
      @mem_military_branches_medal = MemMilitaryBranchesMedal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mem_military_branches_medal_params
      params.require(:mem_military_branches_medal).permit(:memorial_military_branch_id, :medal_id, :order)
    end
end
