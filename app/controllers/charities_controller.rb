class CharitiesController < ApplicationController
        before_action  :find_charity, only: [:show, :edit, :update]
        before_action :find_donor
    def index 
        @charities = Charity.all
        @donor = Donor.find_by(id: params[:id])
    end 
    def new 
        @charity = Charity.new 
    end 

    def create 
        
        if @charity = Charity.find_by(name: params[:charity][:name])
             @charity
        else 
            @charity = Charity.create(charity_params)
        end
        redirect_to charities_path
    end
    
    def show 
        @charities = Charity.all
    end 

    private 

    def charity_params 
        params.require(:charity).permit(:name,)
    end 

    def find_charity
        @charity = Charity.find_by(:id => params[:id])
    end

end


