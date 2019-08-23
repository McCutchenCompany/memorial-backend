class MemMilitaryBranchesMedalsController < ApplicationController
  include Secured
  before_action :set_mem_military_branches_medal, only: [:show, :update, :destroy]
  before_action :set_user, only: [:destroy]

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
    @memorial_military_branch = @mem_military_branches_medal.memorial_military_branch
    @memorial = @memorial_military_branch.memorial
    if @memorial.can_access(@user)
      @mem_military_branches_medal.destroy
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
      render json: {error: "You do not have edit access to this memorial"}, status: 422
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mem_military_branches_medal
      @mem_military_branches_medal = MemMilitaryBranchesMedal.find(params[:id])
    end

    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    # Only allow a trusted parameter "white list" through.
    def mem_military_branches_medal_params
      params.require(:mem_military_branches_medal).permit(:memorial_military_branch_id, :medal_id, :order)
    end
end
