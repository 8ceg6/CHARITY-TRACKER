class DonationsController < ApplicationController

    def index 
        @donations = Donation.all 
    end 

    def new 
        @donation = Donation.new
        # byebug
        # @donation.donor.build
        @donation.charities.build 
        
    end 

    def create 
        @donations = Donation.create(don_params)
        redirect_to charities_path(@donations)
    end 

    def show 

    end 


    private 
    
    def don_params 
        params.require(:donation).permit(:amount, :charity_id, :donor_id, charities_attributes: [:name, :email, :id])
         
    end 
end
