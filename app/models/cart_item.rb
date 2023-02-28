class CartItem < ApplicationRecord
  belongs_to :devil_fruit, optional: true
  belongs_to :shopping_cart, optional: true
end
