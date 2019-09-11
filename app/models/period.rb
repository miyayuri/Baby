class Period < ApplicationRecord
    has_many :regrets, dependent: :destroy
end
