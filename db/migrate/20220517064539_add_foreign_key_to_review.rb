# frozen_string_literal: true

# Description/Explanation of AddForeignKeyToReview class
class AddForeignKeyToReview < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :reviews, :products
  end
end
