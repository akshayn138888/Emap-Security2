class GuardsController < ApplicationController

  def new
    @guard = Guard.new
  end



  def create
    @guard = Guard.new(params[:guard].permit(:email, :password, :password_confirmation))
    if @guard.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end

end
