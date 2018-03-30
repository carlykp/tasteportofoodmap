class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.where.not(latitude: nil, longitude: nil)

    @markers = @restaurants.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/restaurants/map_box", locals: { flat: flat }) }
      }
    end
  end

end
