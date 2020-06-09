class SessionController < ApplicationController
    def new
    end 
   
   
    def create 
        # byebug
       donor = Donor.find_by(:id => params[:id])
       if donor && donor.authenticate(params[:password])
       session[:donor_id] = donor.id
       end
    end 

    def destroy 
        reset_session     
        redirect_to login_path 
    end
end
