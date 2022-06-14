# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe 'Associations' do
    it { should have_many(:line_items) }

    it { should have_many(:products) }

    it { should belong_to(:user) }
  end
end
