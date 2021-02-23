class ReviewsController < ApplicationController
    belongs to :donut
    # belongs to :user

    validates :description, presence: true 
end
