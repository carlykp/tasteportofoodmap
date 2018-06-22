  class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :booking]

    def index

      @search = params[:search]

      @restaurants = params[:search].nil? ? Restaurant.all.where.not(latitude: nil, longitude: nil) : Restaurant.search(params[:search]).where.not(latitude: nil, longitude: nil)

      @markers = @restaurants.map do |restaurant|
        {
          lat: restaurant.latitude,
          lng: restaurant.longitude,
          infoWindow: {
             content:  '<div id="content">'+
          '<div id="name">'+
          restaurant.name +
          '</div>'+
          '<div id="description">'+
          '<em>Description:</em> ' +
          restaurant.description +
          '</div>'+
          #'<div id="food">'+
          #'<em>Food recommendation:</em> ' +
          #restaurant.food_rec +
          #'</div>'+
          #'<div id="wine">'+
          #'<em>Beverage recommendation:</em> ' +
          #restaurant.wine_rec +
          #'</div>'+
          '<div id="link">'+
          '<a href="' +
          restaurant_path(restaurant.id) +
          '">Read more & Have us book for you!</a>' +
          '</div>'+
          '</div>',
          maxWidth: 300,
             }
        }
      end
    end

    def show
      @markers = [
        {
          lat: @restaurant.latitude,
          lng: @restaurant.longitude
          # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        }]
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



