class DevilFruitsController < ApplicationController
  def index
    @devil_fruits = DevilFruit.all
  end

  # def show
  #   @devil_fruits = DevilFruit.find(params[:id])
  # end

  private

  def devil_fruit_params
    params.require(:devil_fruit).permit(:name, :description, :price, :status)
  end
end
