# frozen_string_literal: true

# Description/Explanation of OrdersController class
class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.all
  end

  def show_orders
    @orders = Order.all
    current_user.cart.line_items.each do |item|
      item.destroy
      @product = item
    end
    OrderMailerJob.perform_later(user: current_user.id)
  end

  def show
    @order = current_user.cart
    @cart = current_user.cart
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(user_id: current_user.id)
    current_user.cart.line_items.each do |item|
      @order_item = OrderItem.new
      @order_item.order_id = @order.id
      @order_item.product_id = item.product.id
      @order_item.save
    end
    redirect_to @order
  end
end
