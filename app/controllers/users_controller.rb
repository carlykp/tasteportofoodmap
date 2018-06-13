class UsersController < ApplicationController
  before_action :user

  def requests
    @bookings = @user.bookings
  end

  private

  def user
    @user = current_user
    # @user = User.find(params[:user_id])
  end

end
