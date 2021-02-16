class User < ApplicationRecord
    has_many :reviews
    has_many :products
    has_many :reviewed_products, through: :reviews, source: :product
end