class Regret < ApplicationRecord
    belongs_to :user
    belongs_to :period

    validates :body, presence: true
    validates :period_id, presence: true
    validates :user_id, presence: true

end
