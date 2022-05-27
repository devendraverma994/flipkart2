# frozen_string_literal: true

# Description/Explanation of AddProductToReviews class
class AddProductToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :product
  end
end
