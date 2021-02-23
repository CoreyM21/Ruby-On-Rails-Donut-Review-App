class Donut < ApplicationRecord

    has many :reviews
    has many :users, through: reviews

    validates :name, presence: true
    validates :color, presence: true 
    validates :location, presence: true 

    
    def name_and_color
        "#{self.name} - #{self.color}"
    end

end
