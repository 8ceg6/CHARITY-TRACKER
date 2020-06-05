class DonorsController < ApplicationController

    def new 
        @donor = Donor.all 
    end 

    def def create 
        @donor = Donor.create(donor_params)
    end 


    private 

    def donor_params 
        params.require(:donor).permit(:name, :email, :password)
    end 
end
