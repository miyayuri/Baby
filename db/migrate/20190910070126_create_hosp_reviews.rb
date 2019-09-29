class CreateHospReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :hosp_reviews do |t|
      t.integer :user_id, null: false
      t.integer :hosp_id, null: false
      t.text :body

      t.timestamps
    end
  end
end
