class DonorsController < ApplicationController
    before_action :find_donor
    before_action :authentication_required, except: [:new, :create, :index]

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
    
    def find_donor
        @donor = Donor.find_by(:id => params[:id])
    end
end
