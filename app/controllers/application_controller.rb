# frozen_string_literal: true

# Description/Explanation of ApplicationController class
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_cart

  private

  def current_cart
    cart = Cart.find_by(id: session[:cart_id])
    if cart.present?
      @current_cart = cart
    else
      @current_cart = Cart.create
      session[:cart_id] = @current_cart.id
    end
  end
end
