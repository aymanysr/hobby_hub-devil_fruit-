class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :devil_fruits, through: :cart_items
  # validates :is_full?, presence: true
end
