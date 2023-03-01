class Invoice < ApplicationRecord
  belongs_to :customer
  has_many :invoice_items

  accepts_nested_attributes_for :invoice_items, reject_if: :all_blank, allow_destroy: true
end
