class CreateRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :link
      t.string :creator

      t.timestamps
    end
  end
end
