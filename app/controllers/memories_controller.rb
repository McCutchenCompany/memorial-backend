class MemoriesController < ApplicationController
  include Secured
  before_action :set_user
  before_action :set_memory, only: [:show, :update, :destroy]

  # GET /memories
  def index
    @memories = Memory.all

    render json: @memories
  end

  # GET /memories/1
  def show
    render json: @memory
  end

  # POST /memories
  def create
    @memory = Memory.new(memory_params)

    if @memory.save
      render json: @memory, status: :created, location: @memory
    else
      render json: @memory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /memories/1
  def update
    if Memory.check_permission(@user, @memory)
      if @memory.update(memory_params)
        @memorial = @memory.memorial
        res = Memory.map_names(@memorial.memory)
        render json: res
      else
        render json: @memory.errors, status: :unprocessable_entity
      end
    elsif @memory[:user_id] == @user[:uuid]
      edit
    else
      render json: {error: "You do not have permission to change this memory"}, status: 402
    end
  end

  def edit
    unless @memory[:user_id] != @user[:uuid]
      if @memory.update({
        title: params[:title],
        description: params[:description]
      })
        @memorial = @memory.memorial
        res = Memory.map_names(@memorial.memory)
        render json: res
      else  
        render json: {error: "Error occurred while editing memory"}, status: :unprocessable_entity
      end
    end
  end

  # DELETE /memories/1
  def destroy
    if @memory[:user_id] == @user[:uuid]
      @memorial = @memory.memorial
      @memory.destroy
      @memories = Memory.map_names(@memorial.memory)
      render json: @memories
    else
      render json: {error: "You do not have permission to delete this memory"}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memory
      @memory = Memory.find(params[:id])
    end

    def set_user
      @user = User.find_by(auth0_id: auth_token[0]['sub'])
    end

    # Only allow a trusted parameter "white list" through.
    def memory_params
      params.require(:memory).permit(:published, :denied, :title, :description)
    end
end
