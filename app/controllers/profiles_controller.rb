class ProfilesController < ApplicationController
  def show
    @user = current_user
    @user_bookings = current_user.bookings
    @booking_received = Booking.where(horse_id: current_user.horses.pluck(:id))
    @booking = @user.bookings.first
  end
end
