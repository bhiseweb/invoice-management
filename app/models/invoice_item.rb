# frozen_string_literal: true

# app/models/invoice_item.rb
class InvoiceItem < ApplicationRecord
  belongs_to :tax
  belongs_to :invoice

  def calculate_total
    self.item_total = (units * unit_cost).to_f
    self.tax_amount = (item_total / 100) * tax.percentage
    self.item_total_with_tax = item_total + tax_amount
  end
end
