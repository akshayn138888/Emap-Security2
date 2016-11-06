class SignUppsController < ApplicationController
    
    
def new 
       @sign_upp = SignUpp.new 
        
end 
    
def create 
  @user = Sign.new(user_params) 
  if @user.save 
    session[:sign_upp_id] = @sign_upp.id 
    redirect_to '/' 
  else 
    redirect_to '/sign_upp' 
  end 
end

private
  
  def sign_params
    params.require(:sign_upp).permit(:first_name, :last_name, :email, :password)
  end
end



