class ShoppingCartsController < ApplicationController
  before_action :set_shopping_cart, only: %i[show edit]
  def show
    @cart_items = CartItem.all
    @user = current_user
  end

  def edit
  end

  def update
    if @shopping_cart.update(shopping_cart_params)
      redirect_to shopping_cart_path(@shopping_cart)
    else
      render "edit", status: :unprocessable_entity
    end
  end

  private

  def shopping_cart_params
    params.require(:shopping_cart).permit(:is_full?)
  end

  def set_shopping_cart
    @shopping_cart = ShoppingCart.find(params[:id])
  end
end
