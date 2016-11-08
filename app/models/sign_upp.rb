class SignUpp < ActiveRecord::Base
    
    
    
    
    has_secure_password
    has_many :sign_upp_supervisor
    validates_associated :sign_upp_supervisor
    
end
