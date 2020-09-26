class CharityDonationsController < ApplicationController
    before_action :authentication_required

    def index
    end    
    

    def new 
        
        @charity = Charity.find_by(id: params[:charity_id])
           @donation = current_user.donations.build(charity_id: params[:charity_id])
       
    end 

    def create 
        @donation = Donation.new(don_params)
            
            if @donation.valid?
                @donation.save 
             
                redirect_to charity_donations_path(@donation.charity)
            else 
                redirect_to charity_donations_path 
            end 
    end 
    def show 
        @charity = Charity.find_by(id: params[:charity_id]) 
        @donations = @charity.donations
        @char = []
        @charity.donations.select do |d|
             if d.donor.present?
                     @char << d
             end   
               @char 
         end 
    end 

    private 

    def cd_params 
        params.require(:charity).permit(:name, :donor_id)
    end 

end 