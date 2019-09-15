class CreateHospLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :hosp_likes do |t|
      t.integer :user_id, null: false, default: ""
      t.integer :hosp_id, null: false, default: ""

      t.timestamps
    end
  end
end
