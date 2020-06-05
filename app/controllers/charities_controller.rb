class CharitiesController < ApplicationController

    def new 
        @charity = Charity.new 
    end 

    def create 
        @charity = Charity.create(charity_params)
        redirect_to charity_path(@charity)
    end 





private 

    def charity_params 
        params.require(:charity).permit(:name, :email,)
    end 

end


