class Hosp < ApplicationRecord
    belongs_to :user
    belongs_to :prefecture
    has_many :hosp_reviews, dependent: :destroy
    has_many :hosp_likes, dependent: :destroy
    
    def favorited_by?(user)
        hosp_likes.where(user_id: user.id).exists?
    end
end
