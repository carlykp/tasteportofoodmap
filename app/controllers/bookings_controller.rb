class BookingsController < ApplicationController
  before_action :user
  before_action :set_restaurant, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.restaurant = @restaurant
    if @booking.save
      BookingMailer.confirmation(@booking).deliver_now
      BookingMailer.notification(@booking).deliver_now
      redirect_to restaurants_path
    else
      redirect_to new_restaurant_booking_path(@restaurant.id)
    end

  end

  private

  def user
    @user = current_user
    # @user = User.find(params[:user_id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :time_1, :time_2, :guests, :email)
  end

end
