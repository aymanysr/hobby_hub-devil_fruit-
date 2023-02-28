class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :devil_fruits
  # validates :is_full?, presence: true
end
