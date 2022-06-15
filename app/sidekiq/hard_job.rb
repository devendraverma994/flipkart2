# frozen_string_literal: true

# Description/Explanation of HardJob class
class HardJob
  include Sidekiq::Job

  def perform(*_args)
    puts 'Hello'
  end
end
