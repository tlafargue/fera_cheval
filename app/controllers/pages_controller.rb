class PagesController < ApplicationController
  def home
    @horses = Horse.all
  end
end
