class Recommend < ApplicationRecord
    belongs_to :user
    has_many :recommend_likes, dependent: :destroy
end
