class Prefecture < ApplicationRecord
    has_many :hosps, dependent: :destroy
end
