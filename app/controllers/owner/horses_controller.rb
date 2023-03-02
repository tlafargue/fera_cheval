class Owner::HorsesController < ApplicationController
  def new
    @horse = Horse.new
  end

  def create
    @horse = Horse.new(horse_params)
    @horse.user = current_user
    if @horse.save
      redirect_to owner_horses_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @horses = current_user.horses
  end

  private

  def horse_params
    params.require(:horse).permit(:name, :breed, :specialty, :city, :age, :sex, :price, :photo, :description)
  end
end
