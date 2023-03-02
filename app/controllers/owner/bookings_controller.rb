class Owner::BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = @user.bookings.where(status: %i[approved declined])
  end
end
