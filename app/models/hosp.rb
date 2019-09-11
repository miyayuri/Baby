class Hosp < ApplicationRecord
    belongs_to :user
    bolongs_to :prefecture
end
