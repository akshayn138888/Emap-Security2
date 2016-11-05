class ContactUsController < ApplicationController

    def new
      @contact_us = ContactUS.new
    end


    def create
      @contact = ContactUS.new(users_params)
      if @contact.save
        session[:contact_id] = @contact.id
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
