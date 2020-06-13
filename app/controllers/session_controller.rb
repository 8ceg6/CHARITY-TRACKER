class SessionController < ApplicationController
    
    def new
    end 
   def gh_create
    byebug
   end 
   
    
    
    def create 
        if auth_hash = request.env["omniauth.auth"]
            donor = Donor.omniauth_login(auth_hash)
            
            session[:donor_id] = donor_id 
            redirect_to donor_path(donor)
        else
        donor = Donor.find_by(:name => params[:donor][:name])
        if donor && donor.authenticate(params[:donor][:password])
            session[:donor_id] = donor.id
            
            redirect_to donor_path(donor)
        else
            render :new
        end
      end
    end 

    def destroy 
        reset_session     
        redirect_to login_path 
    end
end
