class Recommend < ApplicationRecord
    belongs_to :user
    has_many :recommend_likes, dependent: :destroy
    def favorited_by?(user)
        recommend_likes.where(user_id: user.id).exists?
    end

    enum term: {infertility: 0,pregnancy: 1}
    #０妊活　１妊娠
end
