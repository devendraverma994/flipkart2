# frozen_string_literal: true

require 'rails_helper'

# rubocop:disable Metrics/BlockLength

RSpec.describe CategoriesController, type: :controller do
  describe 'GET index' do
    it 'renders a successful response' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe 'GET show' do
    it 'renders a successful response' do
      category = Category.create(name: 'a')
      get :show, params: { id: category.id }
      expect(response.status).to eq(200)
    end
  end

  describe 'GET new' do
    it 'renders a successful response' do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe 'GET edit' do
    it 'render a successful response' do
      category = Category.create(name: 'a')
      get :edit, params: { id: category.id }
      expect(response.status).to eq(200)
    end
  end

  describe 'POST create' do
    it 'create a new category' do
      post :create, params: { category: { name: 'a' } }
      expect(response.status).to eq(302)
    end
  end

  describe 'PUT update' do
    it 'updates the requested product' do
      category = Category.create(name: 'category_first')
      put :update, params: { id: category.id, category: { name: 'category_first' } }
      expect(response.status).to eq(302)
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested product' do
      category = Category.create(name: 'category_first')
      delete :destroy, params: { id: category.id, category: { name: 'category_first' } }
      expect(response.status).to eq(303)
    end
  end
end

# rubocop:enable Metrics/BlockLength
