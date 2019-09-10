class CreateHosps < ActiveRecord::Migration[5.2]
  def change
    create_table :hosps do |t|
      t.string :name , null: false, default: ""
      t.integer :user_id, null: false, default: ""
      t.integer :prefecture_id, null: false, default: ""
      t.text :body, null: false, default: ""

      t.timestamps
    end
  end
end
