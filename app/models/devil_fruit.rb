class DevilFruit < ApplicationRecord
  belongs_to :user
  belongs_to :shopping_carts

  # validates :name, presence: true
  # validates :price, presence: true
end
