class User < ApplicationRecord
    has_many :reviews
    has_many :products
    has_many :reviewed_products, through: :reviews, source: :product

    has_secure_password
    validates :password, :email, presence: true
    validates :email, uniqueness: true 

    
end