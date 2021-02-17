class Donut < ApplicationRecord

    
    def name_and_color
        "#{self.name} - #{self.color}"
    end

end
