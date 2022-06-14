# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LineItem, type: :model do
  describe 'Associations' do
    it { should belong_to(:product) }

    it { should belong_to(:cart) }
  end
  describe 'method' do
    it 'fdf' do
      subject.total_price
    end
  end
end
