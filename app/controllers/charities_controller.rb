class CharitiesController < ApplicationController
        before_action  :find_charity, only: [:show, :edit, :update]

    def index 
        @charities = Charity.all
        
    end 
    def new 
        @charity = Charity.new 
    end 

    def create 
        @charity = Charity.create(charity_params)
        redirect_to charities_path
    end
    
    def show 
        # byebug
    end 



private 

    def charity_params 
        params.require(:charity).permit(:name, :email )
    end 

    def find_charity
        @charity = Charity.find_by(:id => params[:id])
    end

end


