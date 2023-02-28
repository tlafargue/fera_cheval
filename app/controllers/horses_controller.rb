class HorsesController < ApplicationController
  def show
    @horse = Horse.find(params[:id])
  end

  def index
    @horses = Horse.all
  end
end
