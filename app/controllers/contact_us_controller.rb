class ContactUsController < ApplicationController

    def new
     
    end


    def create
      @contact_u = ContactU.new(users_params)
      if @contact_u.save
        session[:contact_u_id] = @contact_u.id
        redirect_to '/contact_us/index'
      else
        redirect_to '/'
      end
    end

    private
    def users_params
      params.require(:contact).permit(:name,:email,:phone,:message)
    end
  
end
