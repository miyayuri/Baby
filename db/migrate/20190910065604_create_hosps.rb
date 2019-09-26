class CreateHosps < ActiveRecord::Migration[5.2]
  def change
    create_table :hosps do |t|
      t.string :name , null: false
      t.integer :user_id, null: false
      t.integer :prefecture_id, null: false 
      t.text :body

      t.timestamps
    end
  end
end
