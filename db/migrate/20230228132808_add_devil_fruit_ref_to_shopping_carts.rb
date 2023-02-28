class AddDevilFruitRefToShoppingCarts < ActiveRecord::Migration[7.0]
  def change
    add_reference :shopping_carts, :devil_fruit, null: false, foreign_key: true
  end
end
