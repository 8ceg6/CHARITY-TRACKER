class DonationsController < ApplicationController
    before_action :authentication_required
    
    def index 
        if params[:donor_id]
            @donations = Donor.find(params[:donor_id]).donations
        else
        @donations = Donation.all 
        end 
    end 

    def new 
        @donation = Donation.new
        @donation.build_charity
    
    end 

    def create 
        @donations = Donation.create(don_params)
        redirect_to donor_donations_url
    end 

    def show 

    end 


    private 
    
        def don_params 
            params.require(:donation).permit(:amount, :charity_id, :donor_id, charity_attributes: [:name, :email, :id])
        end 
end
