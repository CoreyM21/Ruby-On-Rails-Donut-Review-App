class User < ApplicationRecord
    has many :reviews #that they created
    has many :donuts #that they created
    has_many :reviewed_donuts, through: :reviews, source: :donuts 
end
