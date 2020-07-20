class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :description
      t.text :notes
      t.integer :enrollment_id

      t.timestamps
    end
  end
end
