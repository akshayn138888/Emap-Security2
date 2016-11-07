class SignUpp < ActiveRecord::Base
    
    validates_presence_of :email
    has_secure_password
    
end
