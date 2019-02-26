class PublicMemorialsController < ApplicationController
  before_action :set_user
  before_action :set_memorial, only: [:show, :update, :destroy, :location, :timeline]

    # GET /public_memorials
    def index
      @memorials = Memorial.where(published: true)
  
      render json: Memorial.add_location(@memorials)
    end
  
    # GET /public_memorials/1
    def show
      if @memorial[:user_id] == @user[:uuid]
        @memories = Memory.map_names(@memorial.memory)
      else
        if @memorial[:public_post]
          @memories = Memory.map_names(@memorial.memory);
        else
          @memories = Memory.map_names(@memorial.memory.where("published = true OR user_id = ?", @user[:uuid]))
        end
      end
      if @memorial[:published] || @memorial[:user_id] == @user[:uuid]
        unless @memorial[:uuid] == "020cac1f-f335-4c0d-831f-7567b9076b61"
          Memorial.add_view(@memorial)
        end
        @location = @memorial.location
        @timeline = @memorial.timeline.where.not(date: nil).sort_by &:date
        @response = {
          memorial: @memorial,
          location: @location,
          timeline: @timeline,
          memories: @memories
        }
        render json: @response
      else
        render json: {error: "The memorial either does not exist or is not yet published"}, status: 504
      end
    end

    def search
      if records = Memorial.search(params)
        render json: Memorial.add_location(records)
      else
        render json: []
      end
    end

    def popular
      if records = Memorial.where(published: true).reorder('views DESC').limit(6)
        render json: Memorial.add_location(records)
      else
        render json: {error: "Could not determine the most viewed memorials"}, status: 500
      end
    end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_memorial
    @memorial = Memorial.find(params[:id])
  end

  def set_user
    if request.headers['Authorization'].present?
      if authenticate_request!
        @user = User.find_by(auth0_id: auth_token[0]['sub'])
      end
    else
      @user = {uuid: nil}
    end
  end

  # Only allow a trusted parameter "white list" through.
  def memorial_params
    params.require(:memorial)
  end

  private

  def authenticate_request!
    auth_token
  rescue JWT::VerificationError, JWT::DecodeError
    render json: { errors: ['Not Authenticated'] }, status: :unauthorized
  end

  def http_token
    if request.headers['Authorization'].present?
      request.headers['Authorization'].split(' ').last
    end
  end

  def auth_token
    JsonWebToken.verify(http_token)
  end
end
