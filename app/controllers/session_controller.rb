class SessionController < ApplicationController
    
    def new
    end 
   
   
    def create 
    #    byebug
        donor = Donor.find_by(:name => params[:donor][:name])
        if donor && donor.authenticate(params[:donor][:password])
            session[:donor_id] = donor.id
            flash[:notice] = "success"
            redirect_to donor_path(donor)
        else
            flash[:alert] =
            redirect_to login_path
        end
       
    end 

    def destroy 
        reset_session     
        redirect_to login_path 
    end
end
