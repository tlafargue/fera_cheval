class Horse::BookingsController < ApplicationController
  before_action :set_horse, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.horse = @horse
    @booking.user = current_user
    @booking.status = "pending"

    date1 = Date.new(@booking.start_date)
    date2 = Date.new(@booking.end_date)
    nb_jour = (date2 - date1).to_i

    if nb_jour > 0
      @booking.total_price = nb_jour * @horse.price
      if @booking.save
        redirect_to horse_path(@booking.horse_id)
      else
        render :new, status: :unprocessable_entity
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end

  def set_horse
    @horse = Horse.find(params[:horse_id])
  end
end
