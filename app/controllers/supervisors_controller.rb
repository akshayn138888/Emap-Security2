class SupervisorsController < ApplicationController


  def new
    @supervisor = Supervisor.new
  end



  def create
    @supervisor = Supervisor.new(params[:supervisor].permit(:email, :password, :password_confirmation))
    if @supervisor.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end




end
