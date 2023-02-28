class DevilFruitsController < ApplicationController
  def index
    @devil_fruits = DevilFruit.all
  end

  # def show
  #   @devil_fruits = DevilFruit.find(params[:id])
  # end

end
