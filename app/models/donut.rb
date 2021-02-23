class Donut < ApplicationRecord

    has_many :reviews
    has_many :users, through: :reviews

    validates :name, presence: true
    validates :color, presence: true 
    validates :location, presence: true 

    
    def name_and_color
        "#{self.name} - #{self.color}"
    end

end
