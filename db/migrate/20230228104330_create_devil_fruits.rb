class CreateDevilFruits < ActiveRecord::Migration[7.0]
  def change
    create_table :devil_fruits do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
