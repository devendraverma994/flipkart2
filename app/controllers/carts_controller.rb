class CartsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @cart = @current_cart
  end

  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end
end