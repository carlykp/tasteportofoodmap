class RestaurantsController < ApplicationController

before_action :set_restaurant, only: [:show]

  def index

    @restaurants = params[:search].nil? ? Restaurant.all.where.not(latitude: nil, longitude: nil) : Restaurant.search(params[:search]).where.not(latitude: nil, longitude: nil)

    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end

  def show
    # @markers = @restaurant.map do |rest|
    # {
    #   lat: rest.latitude,
    #   lng: rest.longitude
    # }
    # end
  end

  def booking
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :food_rec, :wine_rec, :description, :price, :neighborhood)
  end

end



