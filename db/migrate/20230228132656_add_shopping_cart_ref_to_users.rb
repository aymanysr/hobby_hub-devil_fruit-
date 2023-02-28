class AddShoppingCartRefToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :shopping_cart, null: false, foreign_key: true
  end
end
