class ApplicationController < ActionController::API
  include HTTParty

  def status
    render json: {msg: 'Status, it is working!'}, status: 200
  end

  def reverse_geocode
    if @address = HTTParty.get('https://maps.googleapis.com/maps/api/geocode/json?result_type=locality|administrative_area_level_2|administrative_area_level_1|country&latlng=' + params[:latitude].to_s + ',' + params[:longitude].to_s + '&key=' + ENV['GOOGLE_KEY'],
      headers: {'Content-Type': 'application/json'})
      if @address["results"][0]["formatted_address"]
        @address["results"][0]["formatted_address"]
      else
        render json: {error: "Trouble getting the formatted address"}, status: :unprocessable_entity
      end
    else 
      render json: {error: "Trouble getting the formatted address"}, status: :unprocessable_entity
    end
  end

  def find_places
    searchParams = "input=" + params[:query] + "&inputtype=textquery" + "&fields=geometry/location" + "&key=" + ENV['GOOGLE_KEY']
    if @result = HTTParty.get('https://maps.googleapis.com/maps/api/place/findplacefromtext/json?' + searchParams,
      headers: {'Content-Type': 'application/json'})
      if location = @result["candidates"][0]["geometry"]["location"]
        location["address"] = params[:query]
        render json: location
      else
        render json: {}
      end
    else
      render json: {error: "Trouble finding location"}, status: :unprocessable_entity
    end
  end
  
end
