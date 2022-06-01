# frozen_string_literal: true

class User < ApplicationRecord
  has_one :cart
  has_many :orders
  has_many :reviews
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :create_cart
  after_create :create_order

  def create_cart
    Cart.create(user_id:self.id)
  end

  # def create_order
  #   Order.create(user_id:self.id)
  # end
end
