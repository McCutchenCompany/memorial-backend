class MemorialsController < ApplicationController
  before_action :set_memorial, only: [:show, :update, :destroy]

  # GET /memorials
  def index
    @memorials = Memorial.all

    render json: @memorials
  end

  # GET /memorials/1
  def show
    render json: @memorial
  end

  # POST /memorials
  def create
    @memorial = Memorial.new(memorial_params)

    if @memorial.save
      render json: @memorial, status: :created, location: @memorial
    else
      render json: @memorial.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /memorials/1
  def update
    if @memorial.update(memorial_params)
      render json: @memorial
    else
      render json: @memorial.errors, status: :unprocessable_entity
    end
  end

  # DELETE /memorials/1
  def destroy
    @memorial.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorial
      @memorial = Memorial.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def memorial_params
      params.require(:memorial).permit(:first_name, :middle_name, :last_name, :image, :birth_date, :death_date)
    end
end
