class CharitiesController < ApplicationController

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
        params.require(:charity).permit(:name, :email, donations_attributes: [:name], [:id])
    end 

end


