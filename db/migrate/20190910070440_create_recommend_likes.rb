class CreateRecommendLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :recommend_likes do |t|
      t.integer :user_id, null: false
      t.integer :recommend_id, null: false

      t.timestamps
    end
  end
end
