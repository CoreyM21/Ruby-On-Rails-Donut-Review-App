class Donut < ApplicationRecord


    belongs_to :user
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    validates :name, presence: true
    validates :color, presence: true 
    validates :location, presence: true 

    scope :order_by_name, -> { reorder("lower(name) ASC") }
   

    
    def name_and_color
        "#{self.name} - Color: #{self.color}"
    end

end
