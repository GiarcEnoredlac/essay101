class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.text :internal_comment
      t.boolean :allow_score
      t.boolean :allow_draft
      t.boolean :allow_critique
      t.boolean :allow_internal_edits
      t.string :turnover
      t.string :number_of_editors
      t.integer :price
      t.integer :add_on_price

      t.timestamps null: false
    end
  end
end
