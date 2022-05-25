class AddProductToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :product
  end
end
