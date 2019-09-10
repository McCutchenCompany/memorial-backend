class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]

  # GET /locations
  def index
    @locations = Location.all

    render json: @locations
  end

  # GET /locations/1
  def show
    render json: @location
  end

  # POST /locations
  def create
    @location = Location.new(create_params)

    if @location.save
      render json: @location, status: :created, location: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locations/1
  def update
    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  def destroy
    @location.destroy
  end

  # GET /in_range
  def in_range
    @params = {
      top: range_params[:top],
      right: range_params[:right],
      bottom: range_params[:bottom],
      left: range_params[:left]
    }
    if @locations = Location.find_in_range(range_params)
      locations = []
      @locations.each { |location|
        memorial = location.memorial
        entry = location.as_json(only: [:memorial_id, :latitude, :longitude, :description])
        entry[:memorial] = memorial.as_json(
          only: [
            :uuid, :first_name, :middle_name, :last_name, :image, :birth_date, :death_date, :posY, :posX, :scale, :rot
          ]
        )
        entry[:military] = memorial.memorial_military_branches.as_json(
          only: [], 
          include: [
            {
              honor_military_medals: {
                include: {
                  medal: {
                    only: [
                      :uuid, :name
                    ]
                  },
                },
                only: []
              }
            },
            military_rank: {
              only: [
                :name, :image
              ]
            },
            military_branch: {
              only: [
                :name, :image
              ]
            }
          ]
        )
        entry[:memorial][:location] = location[:description]
        locations.push(entry)
      }
      render json: locations
    else
      render json: []
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def location_params
      params.require(:location, :memorial_id).permit(:latitude, :longitude, :memorial_id)
    end
    
    def create_params
      params.require(:location, :latitude, :longitude, :memorial_id).permit(:latitude, :longitude, :memorial_id)
    end

    def range_params
      params.permit(:top, :right, :bottom, :left)
    end
end
