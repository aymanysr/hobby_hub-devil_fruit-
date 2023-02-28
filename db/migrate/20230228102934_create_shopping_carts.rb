class CreateShoppingCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_carts do |t|
      t.belongs_to :user, foreign_key: true
      t.boolean :is_full?, default: false
      t.timestamps null: false
    end
  end
end
