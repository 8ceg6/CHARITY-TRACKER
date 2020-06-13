module DonationsHelper



    def self.donor_name
        donations = Donor.find(params[:donor_id]).donations
       byebug
        self.donations.donor.name
    end 
end
