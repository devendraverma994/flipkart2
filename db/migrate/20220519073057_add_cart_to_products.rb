# frozen_string_literal: true

# Description/Explanation of AddCartToProducts class
class AddCartToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :cart
  end
end
