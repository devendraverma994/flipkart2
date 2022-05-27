# frozen_string_literal: true

# Description/Explanation of AddForeignKeyToProduct class
class AddForeignKeyToProduct < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :products, :carts
  end
end
