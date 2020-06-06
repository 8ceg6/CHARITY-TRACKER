class SessionController < ApplicationController

    def create 
        donor = Donor.find_by(:name => params[:donor][:name])
        if donor && donor.authenticate(params[:password])
            session[:donor_id] = donor.id 
            redirect_to donor_path(donor)
        else 
            redirect_to '/'    
          end 
    
    end 


end
