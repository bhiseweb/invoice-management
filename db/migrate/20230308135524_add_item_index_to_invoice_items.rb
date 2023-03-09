class AddItemIndexToInvoiceItems < ActiveRecord::Migration[7.0]
  def change
    add_column :invoice_items, :item_index, :integer
  end
end
