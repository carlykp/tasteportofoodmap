class BookingsController < ApplicationController
  before_action :user
  before_action :set_restaurant, only: [:new, :create, :show]
  before_action :set_booking, only: [:show]
  before_action :set_time1, only: [:show]
  before_action :set_time2, only: [:show]

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
      redirect_to restaurant_booking_path(@restaurant.id, @booking.id)
    else
      redirect_to new_restaurant_booking_path(@restaurant.id)
    end

  end

  def show
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
    params.require(:booking).permit(:date, :time_1, :time_2, :guests, :email, :telephone)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_time1
    @new_time1 = /\s\d\d:\d\d/.match(@booking.time_1.to_s)
  end

  def set_time2
    @new_time2 = /\s\d\d:\d\d/.match(@booking.time_2.to_s)
  end

end
