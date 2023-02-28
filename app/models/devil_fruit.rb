class DevilFruit < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shopping_carts, optional: true
  has_many :cart_items
  # validates :name, presence: true
  # validates :price, presence: true
end
