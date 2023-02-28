class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :shopping_cart
  has_many :devil_fruits
  #   validates :email, presence: true, confirmation: true
  #   validates :encrypted_password, presence: true, confirmation: true
end
