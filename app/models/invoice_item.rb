class InvoiceItem < ApplicationRecord
  belongs_to :tax
  belongs_to :invoice
end
