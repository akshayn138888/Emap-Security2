class SignUppSecurityGuardsController < ApplicationController
  def new 
    @sign_upp_security_guard = SignUppSecurityGuard.new 
  end 
    
  def create 
    @sign_upp_security_guard = SignUppSecurityGuard.new(params.require(:sign_upp_security_guard).permit(:first_name, :last_name, :email, :password)) 
    if @sign_upp_security_guard.save 
      session[:sign_upp_security_guard_id] = @sign_upp_security_guard.id 
      redirect_to(:action => "index")
    else 
      redirect_to ("/sign_upp_security_guard/new")
    end 
  end
end
