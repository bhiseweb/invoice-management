class AddFieldsToInvoiceItems < ActiveRecord::Migration[7.0]
  def change
    add_column :invoice_items, :tax_amount, :decimal
    add_column :invoice_items, :item_total_with_tax, :decimal
  end
end
