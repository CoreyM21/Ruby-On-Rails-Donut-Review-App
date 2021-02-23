class User < ApplicationRecord
    has_many :reviews #that they created
    has_many :donuts #that they created
    has_many :reviewed_donuts, through: :reviews, source: :donuts 

    # has_secure_password
    validates :password, :email, presence: true
    validates :email, uniqueness: true 
    validates :password, confirmation: { case_sensitive: true }


end
