# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LineItemsController, type: :controller do
  # describe 'POST create' do
  #   it 'create a new product' do
  #     cart = Cart.create
  #     post :create, params: { line_item: { quantity: 1 } }
  #     expect(response.status).to eq(302)
  #   end

  #   it 'redirects to the created product' do
  #     post :create, params: { line_item: { quantity: 1 } }
  #     expect(response.status).to eq(302)
  #   end
  # end

  describe 'POST add_quantity' do
    it 'renders a successful response' do
      category = Category.create(name: 'category_first')
      product = Product.create(name: 'Pro', description: 'des', price: 1, category_id: category.id)
      line_item = LineItem.new(quantity: 1, product_id: product.id)
      line_item.save
      post :add_quantity, params: { line_items: { quantity: 1, product_id: product.id, cart_id: cart.id } }
      expect(response.status).to eq(200)
    end
  end

  # describe 'DELETE destroy' do
  #   it 'destroys the requested product' do
  #     product = Product.create(name: 'Pro', description: 'des', price: 1)
  #     cart = Cart.create
  #     delete :destroy, params: { line_item: { quantity: 1, product_id: product.id, cart_id: cart.id } }
  #     expect(response.status).to eq(302)
  #   end
  # end
end
