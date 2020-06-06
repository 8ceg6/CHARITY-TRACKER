class Donation < ApplicationRecord
    belongs_to :charity 
    belongs_to :donor
    accepts_nested_attributes_for :charity
    accepts_nested_attributes_for :donor

    # def charity_name=(name)
    #     charity = Charity.find_or_create_by(name: name)
    #     self.charity = charity 
    # end 

    # def donor_name=(name)
    #     donor = Donor.find_or_create_by(name: name)
    #     self.donor = donor
    # end 
end 