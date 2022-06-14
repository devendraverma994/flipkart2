# frozen_string_literal: true

# Description/Explanation of GreetingMailer class
class OrderMailer < ApplicationMailer
  def order_email
    @user = params[:user]
    @order = @user.orders
    mail(to: @user.email, subject: 'Thank you for Placing Order')
  end
end
