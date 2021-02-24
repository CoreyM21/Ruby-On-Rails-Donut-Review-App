class User < ApplicationRecord
    has_many :reviews #that they created
    has_many :donuts #that they created
    has_many :reviewed_donuts, through: :reviews, source: :donuts #

    has_secure_password
    validates :username, :password, :email, presence: true
    validates :email, uniqueness: true 
    validates :password, confirmation: { case_sensitive: true }

    def self.create_from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.username = auth['info']['first_name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(12)
        end 
    end 

    def self.create_from_omniauth_github(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.username = auth['info']['nickname']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(12)
        end 
    end
end
