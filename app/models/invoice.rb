# frozen_string_literal: true

# app/models/invoice.rb
class Invoice < ApplicationRecord
  belongs_to :customer
  has_many :invoice_items, dependent: :destroy
  validates :invoice_date, presence: true

  accepts_nested_attributes_for :invoice_items, reject_if: :all_blank, allow_destroy: true
end
