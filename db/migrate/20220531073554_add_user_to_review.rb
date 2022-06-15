# frozen_string_literal: true

# Description/Explanation of AddUserToReview class
class AddUserToReview < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :user
  end
end
