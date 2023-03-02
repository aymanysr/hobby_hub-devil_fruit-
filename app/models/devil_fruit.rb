class DevilFruit < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shopping_carts, optional: true
  has_many :cart_items
  has_one_attached :photo
  # validates :name, presence: true
  # validates :price, presence: true
end
