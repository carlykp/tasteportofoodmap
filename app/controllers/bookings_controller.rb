class BookingsController < ApplicationController
  before_action :user, only: [:create, :index]
  before_action :set_restaurant, only: [:create, :index]

  def index
    @booking.user = @user
    @booking.restaurant = @restaurant
  end

  def create
  @booking = Booking.new()
  @booking.user = @user
  @booking.restaurant = @restaurant

  end

  private

  def user
    @user = current_user
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
