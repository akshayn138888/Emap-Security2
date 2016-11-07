class SessionSecurityGuardsController < ApplicationController
    
    def logedin
        
    end
    
    def new
    end 
    
    def create
        @sign_upp_security_guard = SignUppSecurityGuard.find_by_email(params[:session][:email])
         
    	if @sign_upp_security_guard && @sign_upp_security_guard.authenticate(params[:session][:password])
            session[:sign_upp_security_guard_id] = @sign_upp_security_guard.id
            redirect_to :action => "logedin"
        else
            redirect_to 'login_security_guard'
        end 
    end
    
    def destroy 
       session[:sign_upp_security_guard_id] = nil
       redirect_to '/login_security_guard'
    end 
end
