class CreateFlashcards < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcards do |t|
      t.string :term
      t.string :definition
      t.integer :lesson_id

      t.timestamps
    end
  end
end
