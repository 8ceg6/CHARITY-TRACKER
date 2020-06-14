class Donation < ApplicationRecord
    belongs_to :charity 
    belongs_to :donor
    validates  :amount, numericality: {greater_than: 0}  
    # scope :donor_total, -> {Select sum(amount)From Donations where(donor_id: (?))}
    
    
    def charity_attributes=(char)
        self.charity = Charity.find_or_create_by(char)
        self.save 
    end 

    

end 