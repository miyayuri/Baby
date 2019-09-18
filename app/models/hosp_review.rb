class HospReview < ApplicationRecord
    belongs_to :user
    belongs_to :hosp

    validates :user_id, presence: true
    validates :hosp_id, presence: true
    validates :body, presence: true

end
