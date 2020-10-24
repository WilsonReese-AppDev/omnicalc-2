class MapsController < ApplicationController
  def user_address
    render({ :template => "maps/street_to_coords.html.erb"})
  end

  def address_to_coords
    @address = params.fetch("user_address")
    
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=5807+S+Woodlawn+Ave&key=AIzaSyDB6uZXmYRlo88RLhAxD-yxUbMIZd4oHpg"

    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    results_array = parsed_data.fetch("results")
    first_result = results_array.at(0)
    geometry_hash = first_result.fetch("geometry")
    location_hash = geometry_hash.fetch("location")
    @latitude = location_hash.fetch("lat")
    @longitude = location_hash.fetch("lng")
    
    render({ :template => "maps/street_to_coords_results.html.erb"})
  end
end