# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  describe 'POST create' do
    it 'create a new review' do
      get :new
      expect(response).to be_successful
    end
  end
end
