class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :type
      t.string :name
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
