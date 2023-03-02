# frozen_string_literal: true

class CreateInvoiceItems < ActiveRecord::Migration[7.0]
  def change
    create_table :invoice_items do |t|
      t.string :description
      t.integer :units, default: 1
      t.decimal :unit_cost, default: 0
      t.references :tax, null: false, foreign_key: true
      t.references :invoice, null: false, foreign_key: true
      t.decimal :item_total, default: 0

      t.timestamps
    end
  end
end
