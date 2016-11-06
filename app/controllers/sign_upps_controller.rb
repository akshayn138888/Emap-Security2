class SignUppsController < ApplicationController
  def new 
    @sign_upp = SignUpp.new 
  end 
    
  def create 
    @sign_upp = SignUpp.new(params.require(:sign_upp).permit(:first_name, :last_name, :email, :password)) 
    if @sign_upp.save 
     # session[:sign_upp_id] = @sign_upp.id 
      redirect_to(:action => "index")
    else 
      redirect_to ("/sign_upps/new")
    end 
  end

  
end



