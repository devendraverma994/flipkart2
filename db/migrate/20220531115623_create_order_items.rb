# frozen_string_literal: true

# Description/Explanation of CreateOrderItems class
class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items, &:timestamps
  end
end
