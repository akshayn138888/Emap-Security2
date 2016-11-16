class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
   helper_method :current_user 

  def current_user 
  @current_user ||= sign_upp.find(session[:sign_upp_id]) if session[:sign_upp_id] 
  end
  
  def require_user
  redirect_to '/login' unless current_user
  end 
  
  
  
  protect_from_forgery with: :exception
  

  
end
