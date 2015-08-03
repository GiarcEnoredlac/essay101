class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :company_name
      t.integer :number_of_batches
      t.integer :total_amount
      t.integer :quantity_of_packages
      t.string :file

      t.timestamps null: false
    end
  end
end
