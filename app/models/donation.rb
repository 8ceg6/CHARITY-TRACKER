class Donation < ApplicationRecord
    belongs_to :charity 
    belongs_to :donor
    validates  :amount, numericality: {greater_than: 0}  
    scope :total, -> {Sum }
    
    
    def charity_attributes=(char)
        self.charity = Charity.find_or_create_by(char)
        self.save 
    end 

    # def self.donation_sum
    #     Select sum(amount)From Donations where(donor_id: (?))
    # end 

end 