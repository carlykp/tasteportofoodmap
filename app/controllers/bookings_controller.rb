class BookingsController < ApplicationController
  before_action :user
  before_action :set_restaurant, only: [:new, :create, :index]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(restaurant: @restaurant, user: @user)
    if @booking.save
      redirect_to restaurants_path
    else
      redirect_to new_restaurant_booking_path(@restaurant.id)
    end

  end

  private

  def user
    @user = current_user
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :time_1, :time_2, :guests, :email)
  end

end
