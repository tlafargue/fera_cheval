class PagesController < ApplicationController
  def home
    @horses = Horse.first(3)
  end
end
