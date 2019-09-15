class CreateHospReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :hosp_reviews do |t|
      t.integer :user_id, null: false, default: ""
      t.integer :hosp_id, null: false, default: ""
      t.text :body, null: false, default: ""

      t.timestamps
    end
  end
end
