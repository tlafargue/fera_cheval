class Owner::BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = @user.bookings.where(status: %i[approved declined])
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(status: "approved")
    redirect_to profile_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.update(status: "declined")
    redirect_to profile_path
  end
end
