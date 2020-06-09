class Charity < ApplicationRecord
    has_many :donations
    has_many :donors, through: :donations
    accepts_nested_attributes_for :donations, :donors
    
    def charity_attributes=(char)
        self.char = Charity.find_or_create_by(char)
        self.save 
    end 


end
