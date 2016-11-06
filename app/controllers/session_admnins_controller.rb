class SessionAdmninsController < ApplicationController
    
    def new
    end 
    
    def create
     @sign_upp = Sign_upp.find_by_email(params[:session_admnin][:email])
     
	if @sign_upp && @sign_upp.authenticate(params[:session_admnin][:password])
    session_admnin[:sign_upp_id] = @sign_upp.id
    redirect_to '/'
    else
    redirect_to 'login'
    end 
    end
    
    def destroy 
       session_admnin[:sign_upp_id] = nil
       redirect_to '/'
    end    
        
end 
    
    
class SessionsController < ApplicationController
  def new 
  end 
  def create
  @user = 								User.find_by_email(params[:session]	[:email])
	  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
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

