# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  describe 'Associations' do
    it { should belong_to(:order) }
  end
end
