class Tax < ApplicationRecord
  validates :tax_name, :percentage, presence: true
  has_many :invoice_items
end
