class DonorsController < ApplicationController
    def index 
        @donors = Donor.all
    end 
    
    def new 
        @donor = Donor.new
    end 

    def create 
        @donor = Donor.create(donor_params)


        redirect_to donor_path(@donor)
    end 

    def show 
        @donor = Donor.find_by(:id => params[:id])
        
    end 


    private 

    def donor_params 
        params.require(:donor).permit(:name, :email, :password_digest)
    end 
end
