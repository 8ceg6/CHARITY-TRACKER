class DonationsController < ApplicationController

    def index 
        @dondations = Donation.all 
    end 

    def new 
        @donation = Donation.new
        
    end 

    def create 
        @donations = Donation.create(don_params)
        
    end 

    def show 

    end 


    private 
    
    def don_params 
        params.require(:donation).permit(:amount, :charity_id, :donor_id)
         
    end 
end
