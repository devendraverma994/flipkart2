# frozen_string_literal: true

# Description/Explanation of GreetingMailer class
class GreetingMailer < ApplicationMailer
  def greeting_email
    @user = params[:user]

    mail(to: @user.email, subject: 'Welcome to my Awesome Site')
  end
end
