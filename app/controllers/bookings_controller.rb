class BookingsController < ApplicationController

  before_action :set_restaurant, only: [:create, :index]

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `restaurant_id` to asssociate booking with corresponding restaurant
    @booking.restaurant = Restaurant.find(params[:restaurant_id])
    @booking.save

  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time_1, :time_2, :guests, :email)
  end

end
