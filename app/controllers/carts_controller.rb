# frozen_string_literal: true

# Description/Explanation of CartsController class
class CartsController < ApplicationController
  # before_action :authenticate_user!
  def index
    @cart = current_user.cart
  end

  def destroy
    @cart = current_user.cart
    @cart.line_items.destroy_all
    redirect_to root_path
  end
end
