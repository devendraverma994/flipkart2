# frozen_string_literal: true

# Description/Explanation of HardJob class
class HardJob
  include Sidekiq::Job

  def perform(*args)
    puts 'Hello'
  end
end
