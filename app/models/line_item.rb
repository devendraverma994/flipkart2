# frozen_string_literal: true

# Description/Explanation of LineItem class
class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    quantity * product.price
  end
end
