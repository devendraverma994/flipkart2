# frozen_string_literal: true

# Description/Explanation of AddFieldsToUsers class
class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :boolean
    add_column :users, :address, :string
  end
end
