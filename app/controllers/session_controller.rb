class SessionController < ApplicationController
    
    def new
    end 
   
    def omni_create            
            @donor = Donor.find_or_create_by(email: auth["info"]["email"], name: auth["info"]["name"])
        
        if !@donor.password
            @donor.password = 'omniauth_password'
        end
            @donor.save
            session[:donor_id] = @donor.id
            redirect_to donor_path(@donor)
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

    private

    def auth
        request.env["omniauth.auth"]
    end

end
