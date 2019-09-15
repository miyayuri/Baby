class CreateRegrets < ActiveRecord::Migration[5.2]
  def change
    create_table :regrets do |t|
      t.integer :user_id, null: false, default: ""
      t.integer :period_id, null: false, default: ""
      t.string :body, null: false, default: ""

      t.timestamps
    end
  end
end
