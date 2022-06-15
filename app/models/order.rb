# frozen_string_literal: true

# Description/Explanation of Order class
class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
end
