class CartItemsController < ApplicationController
  before_action :set_cart_item, only: %i[show edit update destroy]

  def show
  end

  def edit
  end

  def create
    # Find associated devil fruit and current cart
    chosen_devil_fruit = DevilFruit.find(params[:devil_fruit_id])
    @shopping_cart = current_user.shopping_cart
    @cart_item = CartItem.new
    @cart_item.shopping_cart = @shopping_cart
    @cart_item.product = chosen_devil_fruit
    # Save and redirect to cart show path
    @cart_item.save
    redirect_to shopping_cart_path(@shopping_cart)
  end

  def update
    if @cart_item.update(cart_item_params)
      redirect_to @cart_item.shopping_cart
    else
      render :edit
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to shopping_cart_path(@shopping_cart)
  end

  private

  def set_cart_item
    @cart_item = CartItem.find(params[:id])
  end

  def cart_item_params
    params.require(:cart_item).permit(:devil_fruit_id, :shopping_cart_id)
  end
end
