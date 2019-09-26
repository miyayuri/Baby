class Recommend < ApplicationRecord
    belongs_to :user
    has_many :recommend_likes, dependent: :destroy
    def favorited_by?(user)
        recommend_likes.where(user_id: user.id).exists?
    end

    enum term: {不妊: 0,妊娠: 1}
    #０妊活 １妊娠

    validates :user_id, presence: true
    validates :genre, presence: true
    validates :title, presence: true
    validates :body, presence: true
    validates :term, presence: true

end
