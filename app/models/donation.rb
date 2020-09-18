class Donation < ApplicationRecord
    belongs_to :charity 
    belongs_to :donor
    validates :amount, presence: true
    validates  :amount, numericality: {greater_than: 0}  
    scope :donor_total, -> { sum(:amount) }
    
    
    def charity_attributes=(char)
    # byebug
        self.charity = Charity.find_or_create_by(char)
        self.save 
    end 

    

end 