class SessionAdmninsController < ApplicationController
    
    def new
    end 
    
    def create
        @sign_upp = SignUpp.find_by_email(params[:session][:email])
         
    	if @sign_upp && @sign_upp.authenticate(params[:session][:password])
            session[:sign_upp_id] = @sign_upp.id
            redirect_to '/'
        else
            redirect_to 'login'
        end 
    end
    
    def destroy 
       session[:sign_upp_id] = nil
       redirect_to '/'
    end    
        
end 
    
    
