class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.references :devil_fruit, foreign_key: true
      t.references :shopping_cart, foreign_key: true

      t.timestamps null: false
    end
  end
end
