# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { Category.new(name: '') }

  describe 'Associations' do
    it { should have_many(:products) }
  end

  describe 'Validations' do
    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
