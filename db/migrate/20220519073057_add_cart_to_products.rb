class AddCartToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :cart
  end
end
