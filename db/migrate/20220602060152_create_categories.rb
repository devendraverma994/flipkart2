# frozen_string_literal: true

# Description/Explanation of CreateCategories class
class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
