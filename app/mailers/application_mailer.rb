# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'flipkart@gmail.com'
  layout 'mailer'
end
