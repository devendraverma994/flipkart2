# frozen_string_literal: true

# Description/Explanation of AddLineItemToOrderItem class
class AddLineItemToOrderItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_items, :product
  end
end
