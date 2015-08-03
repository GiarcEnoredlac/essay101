class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :company
      t.string :payment_type
      t.integer :payment_amount

      t.timestamps null: false
    end
  end
end
