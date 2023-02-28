class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :devil_fruits
end
