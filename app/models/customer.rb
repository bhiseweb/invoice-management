# frozen_string_literal: true

# Customer
class Customer < ApplicationRecord
  validates :name, :fiscal_id, presence: true
  validates :fiscal_id, format: { with: /\A[a-zA-Z0-9]*\z/, message: 'no special characters allowed' }

  has_many :invoices, dependent: :destroy
end
