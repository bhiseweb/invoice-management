# frozen_string_literal: true

# app/models/invoice.rb
class Invoice < ApplicationRecord
  belongs_to :customer
  has_many :invoice_items, dependent: :destroy
  validates :invoice_date, presence: true

  accepts_nested_attributes_for :invoice_items, reject_if: :all_blank, allow_destroy: true

  def calculate_sum
    self.total_gross = invoice_items.map(&:item_total_with_tax).sum.to_f
    self.total_taxes = invoice_items.map(&:tax_amount).sum.to_f
    self.total_net = invoice_items.map(&:item_total).sum.to_f
  end
end
