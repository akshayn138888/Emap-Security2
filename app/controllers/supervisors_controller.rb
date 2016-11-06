class SupervisorsController < ApplicationController
    
    def new
        @supervisor = Supervisor.new
    end
end
