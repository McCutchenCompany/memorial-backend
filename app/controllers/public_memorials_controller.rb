class PublicMemorialsController < ApplicationController
  before_action :set_memorial, only: [:show, :update, :destroy, :location, :timeline]

    # GET /memorials
    def index
      @memorials = Memorial.all
  
      render json: @memorials
    end
  
    # GET /memorials/1
    def show
      @location = @memorial.location
      @timeline = @memorial.timeline.where.not(date: nil).order(:date)
      @response = {
        memorial: @memorial,
        location: @location,
        timeline: @timeline
      }
      render json: @response
    end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_memorial
    @memorial = Memorial.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def memorial_params
    params.require(:memorial)
  end
end
