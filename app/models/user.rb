class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :shopping_cart
  #   validates :email, presence: true, confirmation: true
  #   validates :encrypted_password, presence: true, confirmation: true
end
