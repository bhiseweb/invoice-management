class CreateTaxes < ActiveRecord::Migration[7.0]
  def change
    create_table :taxes do |t|
      t.string :tax_name
      t.decimal :percentage, default: 0

      t.timestamps
    end
  end
end
