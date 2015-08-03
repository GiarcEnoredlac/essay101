class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.string :student_name
      t.string :text
      t.string :revier_one
      t.string :reviewer_two

      t.timestamps null: false
    end
  end
end
