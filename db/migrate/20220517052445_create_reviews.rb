# frozen_string_literal: true

# Description/Explanation of CreateReviews class
class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.string :body

      t.timestamps
    end
  end
end
