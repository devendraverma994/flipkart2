# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CartsController, type: :controller do
  describe 'GET index' do
    it 'renders a successful response' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested product' do
      # product = Product.create(name: 'a', description: 'abc', price: 1, category_id: category.id)
      delete :destroy, params: { id: category.id, category: { name: 'a', description: 'abc', price: 1, category_id:
                                  category.id } }
      expect(response.status).to eq(303)
    end
  end
end
