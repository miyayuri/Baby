class CreateRecommends < ActiveRecord::Migration[5.2]
  def change
    create_table :recommends do |t|
      t.integer :term, null: false, default: 0
      t.integer :user_id, null: false, default: ""
      t.string :genre, null: false, default: ""
      t.string :title, null: false, default: ""
      t.text :body, null: false, default: ""

      t.timestamps
    end
  end
end