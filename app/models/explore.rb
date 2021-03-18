class Explore < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
end
