# frozen_string_literal: true

require 'rails_helper'

# rubocop:disable Metrics/BlockLength

RSpec.describe ProductsController, type: :controller do
  describe 'GET index' do
    it 'renders a successful response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET show' do
    it 'renders a successful response' do
      category = Category.create(name: 'category_first')
      product = Product.create(name: 'a', description: 'abc', price: 1, category_id: category.id)
      get :show, params: { id: product.id }
      expect(response.status).to eq(200)
    end
  end

  describe 'GET new' do
    it 'renders a successful response' do
      get :new
      expect(response).to be_successful
    end
  end

  describe 'GET edit' do
    it 'render a successful response' do
      category = Category.create(name: 'category_first')
      product = Product.create(name: 'a', description: 'abc', price: 1, category_id: category.id)
      get :edit, params: { id: product.id }
      expect(response.status).to eq(200)
    end
  end

  describe 'POST create' do
    it 'create a new product' do
      category = Category.create(name: 'category_first')
      post :create, params: { product: { name: 'a', description: 'abc', price: 1, category_id: category.id } }
      expect(Product.count).to eq(1)
    end
  end

  describe 'PUT update' do
    it 'updates the requested product' do
      category = Category.create(name: 'category_first')
      product = Product.create(name: 'a', description: 'abc', price: 1, category_id: category.id)
      put :update, params: { id: product.id, product: { name: 'a', description: 'abc', price: 1, category_id:
                              category.id } }
      expect(response.status).to eq(302)
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested product' do
      category = Category.create(name: 'category_first')
      product = Product.create(name: 'a', description: 'abc', price: 1, category_id: category.id)
      delete :destroy, params: { id: product.id, product: { name: 'a', description: 'abc', price: 1, category_id:
                                  category.id } }
      expect(response.status).to eq(303)
    end
  end
end

# rubocop:enable Metrics/BlockLength
