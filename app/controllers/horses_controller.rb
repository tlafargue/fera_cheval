class HorsesController < ApplicationController
  def show
    @horse = Horse.find(params[:id])
    @booking = Booking.new
  end

  def index
    @horses = Horse.all
  end
end
