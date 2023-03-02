class CartItemsController < ApplicationController
  before_action :set_cart_item, only: %i[show destroy]
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def show
  end

  def new
    @cart_item = CartItem.new
  end

  def create
    @chosen_devil_fruit = DevilFruit.find(params[:devil_fruit_id])
    @shopping_cart = current_user.shopping_cart || current_user.create_shopping_cart
    @cart_item = @shopping_cart.cart_items.build(devil_fruit: @chosen_devil_fruit)

    if @cart_item.save
      redirect_to shopping_cart_path
    else
      render :new
    end
  end

  # def update (WE DONT NEED IT FOR NOW!)
  #   if @cart_item.update(cart_item_params)
  #     redirect_to @cart_item.shopping_cart
  #   else
  #     render :edit
  #   end
  # end

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
