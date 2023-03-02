# frozen_string_literal: true

# Tax
class Tax < ApplicationRecord
  validates :tax_name, :percentage, presence: true, uniqueness: true
  has_many :invoice_items
end
