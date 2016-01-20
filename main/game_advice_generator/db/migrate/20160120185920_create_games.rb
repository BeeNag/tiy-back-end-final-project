class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.references :platform, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
