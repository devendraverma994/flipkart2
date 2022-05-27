# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_one_attached :picture
  has_many :cart, through: :line_items
  has_many :line_items, dependent: :destroy
end
