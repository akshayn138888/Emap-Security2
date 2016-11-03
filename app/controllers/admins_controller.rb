class AdminsController < ApplicationController

  def new
    @admin = Admin.new
  end



  def create
    @admin = Admin.new(params[:admin].permit(:email, :password, :password_confirmation))
    if @admin.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end


end