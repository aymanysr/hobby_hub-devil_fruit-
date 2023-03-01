class ShoppingCart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :devil_fruits, through: :cart_items
  has_many :cart_items
  # validates :is_full?, presence: true
  def is_full?
    shopping_cart.devil_fruits.count != 0
  end
end
