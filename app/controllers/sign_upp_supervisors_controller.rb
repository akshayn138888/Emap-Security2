class SignUppSupervisorsController < ApplicationController
    
  def new 
    @sign_upp_supervisor = SignUppSupervisor.new 
  end 
    
  def create 
    @sign_upp_supervisor = SignUppSupervisor.new(params.require(:sign_upp_supervisor).permit(:first_name, :last_name, :email, :password)) 
    if @sign_upp_supervisor.save 
      session[:sign_upp_supervisor_id] = @sign_upp_supervisor.id 
      redirect_to(:action => "index")
    else 
      redirect_to ("/sign_upp_supervisors/new")
    end 
  end
end
