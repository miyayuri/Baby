class RecommendLike < ApplicationRecord
    belongs_to :user
    belongs_to :recommend

    validates :user_id, presence: true
    validates :recommend_id, presence: true

end
