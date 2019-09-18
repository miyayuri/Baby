class HospLike < ApplicationRecord
    belongs_to :user
    belongs_to :hosp

    validates :user_id, presence: true
    validates :hosp_id, presence: true

end
