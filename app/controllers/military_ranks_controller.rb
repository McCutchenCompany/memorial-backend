class MilitaryRanksController < ApplicationController
  before_action :set_military_rank, only: [:show, :update, :destroy]

  # GET /military_ranks
  def index
    @military_ranks = MilitaryRank.all

    render json: @military_ranks
  end

  # GET /military_ranks/1
  def show
    render json: @military_rank
  end

  # POST /military_ranks
  def create
    @military_rank = MilitaryRank.new(military_rank_params)

    if @military_rank.save
      render json: @military_rank, status: :created, location: @military_rank
    else
      render json: @military_rank.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /military_ranks/1
  def update
    if @military_rank.update(military_rank_params)
      render json: @military_rank
    else
      render json: @military_rank.errors, status: :unprocessable_entity
    end
  end

  # DELETE /military_ranks/1
  def destroy
    @military_rank.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_military_rank
      @military_rank = MilitaryRank.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def military_rank_params
      params.require(:military_rank).permit(:military_branch_id, :name, :image, :order)
    end
end
