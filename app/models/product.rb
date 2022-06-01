# frozen_string_literal: true

class Product < ApplicationRecord
  # belongs_to :category
  has_many :reviews, dependent: :destroy
  # has_many :cart, through: :line_items
  # has_many :line_items, dependent: :destroy

  has_one_attached :picture
end
