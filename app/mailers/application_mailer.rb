# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'demo@gmail.com'
  layout 'mailer'
end
