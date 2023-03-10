class DevilFruitsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    if params[:query].present?
      @devil_fruits = policy_scope(DevilFruit.where("name ILIKE ?", "%#{params[:query]}%"))
    else
      @devil_fruits = policy_scope(DevilFruit.all)
    end
  end

  def show
    @devil_fruit = DevilFruit.find(params[:id])
    authorize @devil_fruit
    # @chosen_devil_fruit
  end

  def new
    @devil_fruit = DevilFruit.new
    authorize @devil_fruit
  end

  def create
    @devil_fruit = DevilFruit.new(devil_fruit_params)
    @devil_fruit.user = current_user
    authorize @devil_fruit
    if @devil_fruit.save
      redirect_to @devil_fruit
    else
      render :new
    end
  end

  def edit
    @devil_fruit = DevilFruit.find(params[:id])
    authorize @devil_fruit
  end

  def update
    @devil_fruit = DevilFruit.find(params[:id])
    authorize @devil_fruit
    if @devil_fruit.update(devil_fruit_params)
      redirect_to @devil_fruit
    else
      render :edit
    end
  end

  def destroy
    @devil_fruit = DevilFruit.find(params[:id])
    authorize @devil_fruit
    @devil_fruit.destroy
    redirect_to devil_fruits_url, notice: "Devil fruit has been destroyed!"
  end

  private

  def devil_fruit_params
    params.require(:devil_fruit).permit(:name, :description, :price, :status, :photo)
  end
end
