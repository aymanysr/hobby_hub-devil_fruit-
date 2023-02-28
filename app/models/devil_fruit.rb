class DevilFruit < ApplicationRecord
  belongs_to :user
  belongs_to :shopping_carts
  has_many :cart_items
  # validates :name, presence: true
  # validates :price, presence: true
end
