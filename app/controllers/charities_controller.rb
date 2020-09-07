class CharitiesController < ApplicationController
        before_action  :find_charity, only: [:show, :edit, :update]
        
    def index 
        @charities = Charity.all
    end 
    def new 
        @charity = Charity.new 
    end 

    def create 
        # byebug
        if @charity = Charity.find_by(name: params[:charity][:name])
            # @charity
        else 
            @charity = Charity.create(charity_params)
        end
        redirect_to charities_path
    end
    
    def show 
        
    end 

    private 

    def charity_params 
        params.require(:charity).permit(:name,)
    end 

    def find_charity
        @charity = Charity.find_by(:id => params[:id])
    end

end


