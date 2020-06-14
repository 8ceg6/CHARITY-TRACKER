class SessionController < ApplicationController
    
    def new
    end 
   def omni_create
    byebug
    @donor = User.find_or_create_by(name: auth["info"]["email"])
        if !@donor.password
      @donor.password = 'omniauth_password'
        end
    end 
   
    
    
    def create 
        donor = Donor.find_by(:name => params[:donor][:name])
        if donor && donor.authenticate(params[:donor][:password])
            session[:donor_id] = donor.id
            
            redirect_to donor_path(donor)
        else
            render :new
        end
      
    end 

    def destroy 
        reset_session     
        redirect_to login_path 
    end
end
