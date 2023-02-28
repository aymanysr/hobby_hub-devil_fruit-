class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
  end

  def show
    @cart_item = CartItem.find(params[:id])
  end

  def new
    @cart_item = CartItem.new
  end

  def create
    @cart_item = CartItem.new(cart_item_params)

    if @cart_item.save
      redirect_to @cart_item, notice: "Cart item was successfully created."
    else
      render :new
    end
  end

  def edit
    @cart_item = CartItem.find(params[:id])
  end

  def update
    @cart_item = CartItem.find(params[:id])

    if @cart_item.update(cart_item_params)
      redirect_to @cart_item, notice: "Cart item was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy

    redirect_to cart_items_url, notice: "Cart item was successfully destroyed."
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:devil_fruit_id, :shopping_cart_id)
  end
end
