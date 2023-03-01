class HorsesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def show
    @horse = Horse.find(params[:id])
    @booking = Booking.new
  end

  def index
    @horses = Horse.all
  end
end
