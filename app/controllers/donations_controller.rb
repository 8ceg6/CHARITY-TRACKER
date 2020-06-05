class DonationsController < ApplicationController

    def index 
        @dondations = Donation.all 
    end 

    def new 
        @donation = Donation.new
    end 

    def create 
        @donation = Donation.create(don_params)
        redirect_to charity_path(@charity)
    end 


    private 
    
    def don_params 
        params.require(:donation).permit(:amount, charity_attributes: [:name], donor_attributes: [:name]  )
        # :donor_ids:[], :charity_ids:[]
    end 
end
