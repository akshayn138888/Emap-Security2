class SessionAdmninsController < ApplicationController
    
    def logedin
        
    end
    
    def new
    end 
    
    def create
        @sign_upp = SignUpp.find_by_email(params[:session][:email])
         
    	if @sign_upp && @sign_upp.authenticate(params[:session][:password])
            session[:sign_upp_id] = @sign_upp.id
            redirect_to :action => "logedin"
        else
            redirect_to 'login_supervisor'
        end 
    end
    
    def destroy 
       session[:sign_upp_id] = nil
       redirect_to '/login_supervisor'
    end    
        
end 