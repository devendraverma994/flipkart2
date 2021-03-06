# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :body, presence: true
end
