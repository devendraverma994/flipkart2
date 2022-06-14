class OrderMailerJob < ApplicationJob
  queue_as :default

  def perform(**kwargs)
    OrderMailer.with(user: User.find(kwargs[:user])).order_email.deliver_later
  end
end
