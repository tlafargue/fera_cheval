class Owner::HorsesController < ApplicationController
  def new
    @horse = Horse.new
  end

  def create
    @horse = Horse.new(horse_params)
    if @horse.save
      redirect_to list_path(@horse.list_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def horse_params
    params.require(:horse).permit(:user, :name, :breed, :specialty, :city, :age, :sex, :price, :photo)
  end
end
