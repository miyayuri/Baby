class CreateHospLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :hosp_likes do |t|
      t.integer :user_id, null: false
      t.integer :hosp_id, null: false

      t.timestamps
    end
  end
end
