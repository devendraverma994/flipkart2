# frozen_string_literal: true

# Description/Explanation of AddOrderToOrderItems class
class AddOrderToOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_items, :order
  end
end
