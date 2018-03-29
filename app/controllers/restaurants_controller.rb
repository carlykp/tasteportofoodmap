class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all # no more fake DB
  end

end
