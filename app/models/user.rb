# frozen_string_literal: true

# Description/Explanation of User class
class User < ApplicationRecord
  has_one :cart
  has_many :orders
  has_many :reviews
  rolify

  validates :name, presence: true
  validates :email, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  after_create :create_cart

  def create_cart
    Cart.create(user_id: id)
  end
end
