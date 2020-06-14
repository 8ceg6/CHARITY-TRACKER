class CharitiesController < ApplicationController
        before_action  :find_charity, only: [:show, :edit, :update]

    def index 
        @charities = Charity.alpha
        # byebug
    end 
    def new 
        @charity = Charity.new 
    end 

    def create 
        @charity = Charity.find_or_create(charity_params)
        redirect_to charities_path
    end
    
    def show 
        
    end 



private 

    def charity_params 
        params.require(:charity).permit(:name, :email )
    end 

    def find_charity
        @charity = Charity.find_by(:id => params[:id])
    end

end


