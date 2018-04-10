class BookingsController < ApplicationController

  before_action :set_restaurant, only: [:create, :index]

  def new
    @booking.restaurant = @restaurant
  end

  def create
    @booking = Booking.new()
    @booking.user = @user
    @booking.restaurant = @restaurant

  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end



end
