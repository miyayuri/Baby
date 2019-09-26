class CreateRecommends < ActiveRecord::Migration[5.2]
  def change
    create_table :recommends do |t|
      t.integer :term, null: false, default: 0
      t.integer :user_id, null: false
      t.string :genre, null: false
      t.string :title, null: false
      t.text :body

      t.timestamps
    end
  end
end
