class ShoppingCartsController < ApplicationController
  before_action :set_shopping_cart, only: %i[show edit]
  before_action :authenticate_user!

  def show
    @cart_items = current_user.cart_items
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
    @shopping_cart = current_user.shopping_cart
  end
end
