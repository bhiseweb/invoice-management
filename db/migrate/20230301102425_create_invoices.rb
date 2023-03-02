# frozen_string_literal: true

class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.references :customer, null: false, foreign_key: true
      t.decimal :total_gross, default: 0
      t.decimal :total_taxes, default: 0
      t.decimal :total_net, default: 0
      t.datetime :invoice_date

      t.timestamps
    end
  end
end
