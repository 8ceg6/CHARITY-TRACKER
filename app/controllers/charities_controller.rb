class CharitiesController < ApplicationController
        # before_action  :find_charity, only: [:index, :show, :edit, :update]

    def index 
        @charities = Charity.all
        # redirect_to charity_path(@charities)
    end 
    def new 
        @charity = Charity.new 
    end 

    def create 
        charity = Charity.create(charity_params)
        redirect_to charity_path(charity)
    end
    
    def show 
        @charity = Charity.find_by(:id => params[:id])
    end 



private 

    def charity_params 
        params.require(:charity).permit(:name, :email, 
                        donor_attributes: [:name], 
                        donations_attributes: [:amount])
    end 

    def find_charity
        @charity = Charity.find_by(:id => params[:id])
    end

end


