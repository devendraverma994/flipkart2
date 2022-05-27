# frozen_string_literal: true

# Description/Explanation of Application class
class LineItemsController < ApplicationController
  # rubocop:disable Metrics/AbcSize
  def create
    chosen_product = Product.find(params[:product_id])

    if current_cart.products.include?(chosen_product)
      @line_item = current_cart.line_items.find_by(product_id: chosen_product)
      @line_item.quantity += 1
    else
      @line_item = LineItem.new
      @line_item.cart = current_cart
      @line_item.product = chosen_product
    end
    redirect_to cart_path(current_cart) if @line_item.save
  end
  # rubocop:enable Metrics/AbcSize

  def add_quantity
    @line_item = LineItem.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
    redirect_to cart_path(@current_cart)
  end

  def reduce_quantity
    @line_item = LineItem.find(params[:id])
    @line_item.quantity -= 1 if @line_item.quantity > 1
    @line_item.save
    redirect_to cart_path(@current_cart)
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
