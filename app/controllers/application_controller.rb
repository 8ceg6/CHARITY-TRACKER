class ApplicationController < ActionController::Base
    helper_method :current_user
    
    def authentication_required
        if !logged_in?
          redirect_to '/'
        end
    end 
    
    def logged_in?
        !!current_user
    end

    def current_user 
        @current_user ||= Donor.find(session[:donor_id]) if session[:donor_id]
    end 
    
    def find_donor
        @donor = Donor.find_by(:id => params[:id])
    end
end
