class InvoiceItem < ApplicationRecord
  belongs_to :tax
  belongs_to :invoice

  before_save :calculate_total
  after_save :checksum

  def calculate_total
    tax = Tax.find(self.tax_id).percentage
    self.item_total = (self.units * self.unit_cost) + tax
  end

  def checksum
    tax = Tax.find(self.tax_id).percentage
    invoice = Invoice.find self.invoice_id
    invoice.update(total_gross: self.item_total, total_taxes: tax, total_net: self.item_total, invoice_date: DateTime.now)
  end
end
