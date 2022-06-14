# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Review, type: :model do
  subject { Review.new(body: '') }

  describe 'Associations' do
    it { should belong_to(:product) }

    it { should belong_to(:user) }
  end

  describe 'Validations' do
    it 'body should be present' do
      subject.body = nil
      expect(subject).to_not be_valid
    end
  end
end
