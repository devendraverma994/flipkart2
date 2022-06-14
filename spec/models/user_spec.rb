# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: '', email: '') }

  describe 'Associations' do
    it { should have_one(:cart) }

    it { should have_many(:orders) }

    it { should have_many(:reviews) }
  end

  describe 'Validations' do
    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'email should be present' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Callbacks' do
    it 'create a cart for user' do
      expect { subject.save }.to_not raise_error
    end
  end
end
