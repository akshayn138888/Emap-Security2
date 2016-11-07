class SessionSupervisorsController < ApplicationController
    
    def logedin
        
    end
    
    def new
    end 
    
    def create
        @sign_upp_supervisor = SignUppSupervisor.find_by_email(params[:session][:email])
         
    	if @sign_upp_supervisor && @sign_upp_supervisor.authenticate(params[:session][:password])
            session[:sign_upp_supervisor_id] = @sign_upp_supervisor.id
            redirect_to :action => "logedin"
        else
            redirect_to 'login'
        end 
    end
    
    def destroy 
       session[:sign_upp_supervisor_id] = nil
       redirect_to '/login'
    end 
end
