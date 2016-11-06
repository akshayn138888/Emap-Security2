class SupervisorsController < ApplicationController
    
    def new
        @supervisor = Supervisor.new
    end
    
    def create
        @supervisor = Supervisor.new(params.require(:supervisor).permit(:name,:age))
        if @supervisor.save
            redirect_to(:action => "index")
        else
            redirect_to("/")
        end
    end
end
