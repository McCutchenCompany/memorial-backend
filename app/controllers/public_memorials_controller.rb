class PublicMemorialsController < ApplicationController
  include Order
  before_action :set_user
  before_action :set_memorial, only: [:show, :update, :destroy, :location, :timeline]

    # GET /public_memorials
    def index
      @pagination = {
        q: params[:q].nil? ? '' : params[:q],
        p: params[:p].nil? ? 1 : params[:p],
        per_p: params[:per_p].nil? ? 10 : params[:per_p],
        total: 0,
        order: {
          column: @order.column,
          dir: @order.direction
        }
      }
      @memorials = Memorial.where(published: true)
      .reorder(@order.column  => @order.direction)
        .ransack(first_name_or_last_name_cont_any: @pagination[:q].split(" ")).result
      @pagination[:total] = @memorials.length
      @memorials = @memorials
        .paginate(page: @pagination[:p], per_page: @pagination[:per_p])
        .select("uuid, first_name, middle_name, last_name, image, birth_date, death_date")
      response = {
        results: Memorial.add_location(@memorials),
        pagination: @pagination
      }
      render json: response
    end
  
    # GET /public_memorials/1
    def show
      if @memorial.can_access(@user)
        @memories = Memory.map_names(@memorial.memory)
      else
        if @memorial[:public_post]
          @memories = Memory.map_names(@memorial.memory);
        else
          @memories = Memory.map_names(@memorial.memory.where("published = true OR user_id = ?", @user[:uuid]))
        end
      end
      if @memorial[:public_photo]
        @photos = Photo.map_users(@memorial.photos.take(20))
        @photo_count = @memorial.photos.count
      else
        @photos = Photo.map_users(@memorial.photos.where("published = true OR user_id = ?", @user[:uuid]).take(20))
        @photo_count = @memorial.photos.where("published = true OR user_id = ?", @user[:uuid]).count
      end
      if @memorial[:published] || @memorial.can_access(@user)
        unless @memorial[:uuid] == "020cac1f-f335-4c0d-831f-7567b9076b61"
          Memorial.add_view(@memorial)
        end
        @location = @memorial.location
        @timeline = @memorial.timeline.where.not(date: nil).sort_by &:date
        @military = @memorial.memorial_military_branches.to_json(
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
            military_rank: {
              only: [
                :uuid, :name, :image
              ]
            },
            military_branch: {
              only: [
                :uuid, :name, :image, :description
              ]
            }
          ]
        )
        @response = {
          memorial: @memorial,
          location: @location,
          timeline: @timeline,
          memories: @memories,
          military: ActiveSupport::JSON.decode(@military),
          album: {count: @photo_count, photos: @photos}
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
      if records = Memorial.where(published: true).where.not(uuid: '020cac1f-f335-4c0d-831f-7567b9076b61').reorder('created_at DESC').limit(6)
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
