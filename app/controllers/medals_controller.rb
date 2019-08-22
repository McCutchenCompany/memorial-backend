class MedalsController < ApplicationController
  before_action :set_medal, only: [:show]

  # GET /medals
  def index
    @medals = Medal.all

    render json: @medals
  end

  # GET /medals/1
  def show
    render json: @medal
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medal
      @medal = Medal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def medal_params
      params.require(:medal).permit(:name, :image)
    end
end
