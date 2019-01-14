class ApplicationController < ActionController::API
  include HTTParty

  def status
    render json: {msg: 'Status, it is working!'}, status: 200
  end

  def reverse_geocode
    if @address = HTTParty.get('https://maps.googleapis.com/maps/api/geocode/json?latlng=' + params[:latitude].to_s + ',' + params[:longitude].to_s + '&key=' + ENV['GOOGLE_KEY'],
      headers: {'Content-Type': 'application/json'})
      description = @address["results"][5]["formatted_address"]
    else 
      render json: {error: "Trouble getting the formatted address"}, status: :unprocessable_entity
    end
  end
  
end
