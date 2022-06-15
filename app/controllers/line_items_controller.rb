# frozen_string_literal: true

# Description/Explanation of LineItemController class
class LineItemsController < ApplicationController
  before_action :authenticate_user!

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength

  def create
    chosen_product = Product.find(params[:product_id])
    current_cart = current_user.cart
    if current_cart.products.include?(chosen_product)
      @line_item = current_cart.line_items.find_by(product_id: chosen_product)
      @line_item.quantity += 1
    else
      @line_item = LineItem.new
      @line_item.cart = current_cart
      @line_item.product = chosen_product
    end
    redirect_to carts_path(current_cart) if @line_item.save
  end
  # rubocop:enable Metrics/AbcSize

  def add_quantity
    @line_item = LineItem.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
    redirect_to cart_path
  end

  def reduce_quantity
    @line_item = LineItem.find(params[:id])
    @line_item.quantity -= 1 if @line_item.quantity > 1
    @line_item.save
    redirect_to cart_path
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to carts_path(@current_cart)
  end

  private

  def line_item_params
    params.require(:line_item).permit(:quantity, :product_id, :cart_id)
  end
end

# rubocop:enable Metrics/MethodLength
