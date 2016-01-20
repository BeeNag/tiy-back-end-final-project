class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.text :body
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
