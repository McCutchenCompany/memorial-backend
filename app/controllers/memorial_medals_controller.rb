class MemorialMedalsController < ApplicationController
  include Secured

  before_action :set_memorial_medal, only: [:update, :destroy]
  before_action :set_user, only: [:create, :destroy]
  before_action :set_memorial, only: [:create]
  skip_before_action :authenticate_request!, only: [:index, :show]

  # GET /memorial_medals
  def index
    @memorial_medals = MemorialMedal.all

    render json: @memorial_medals
  end

  # GET /memorial_medals/1
  def show
    if @memorial
      memorial_medals = @memorial.memorial_medals.order(:order).reorder(:order)
      medals = []
      memorial_medals.each do |mm|
        medals << mm.medal
      end
      render json: medals.to_json(only: [:uuid, :name, :image])
    else
      render json: {error: "Invalid Memorial"}, status: :unprocessable_entity
    end
  end

  # POST /memorial_medals
  def create
    if @memorial && @memorial.military_branches.present? && @memorial.can_access(@user)
      @medal = Medal.find(params[:medal_id])
      @branch = @memorial.military_branches.find(params[:branch_id])
      if @mem_branch = @memorial.memorial_military_branches.find_by({military_branch_id: @branch[:uuid]})
        order = @branch.military_branch_medals.find_by(medal_id: @medal[:uuid])[:order]
        @mem_branch.mem_military_branches_medals.find_or_create_by({medal_id: @medal[:uuid], order: order})
        render json: @memorial.memorial_military_branches,
          only: [:uuid, :start_date, :end_date], 
          include: [
            {
              mem_military_branches_medals: {
                include: {
                  medal: {
                    only: [
                      :uuid, :name, :image
                    ]
                  },
                },
                only: [
                  :date_awarded, :description, :order, :uuid
                ]
              }
            },
            military_branch: {
              only: [
                :uuid, :name, :image, :description
              ]
            }
          ]
      else  
        render json: {error: "Memorial is not in the military branch"}, status: :unprocessable_entity
      end
    else
      render json: {error: "Could not save"}, status: :unprocessable_entity
    end
  end

  # DELETE /memorial_medals/1
  def destroy
    @memorial_medal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorial_medal
      @memorial_medal = MemorialMedal.find(params[:id])
    end

    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    def set_memorial
      if params[:memorial_id].present?
        @memorial = Memorial.find(params[:memorial_id])
      else
        @memorial = Memorial.find(params[:id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def memorial_medal_params
      params.require(:memorial_medal).permit(:memorial_id, :medal_id, :date_awarded, :description, :order)
    end
end
