class Review < ApplicationRecord

    validates :description, presence: true

    belongs_to :donut
    belongs_to :user 
end
