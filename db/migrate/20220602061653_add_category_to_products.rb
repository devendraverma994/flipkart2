# frozen_string_literal: true

# Description/Explanation of AddCategoryToProduct class
class AddCategoryToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :category
  end
end
