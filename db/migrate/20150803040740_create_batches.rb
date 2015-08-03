class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :company
      t.string :package
      t.string :test_type
      t.boolean :component_scores
      t.string :instructor
      t.integer :number_of_students
      t.string :essay_file
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
