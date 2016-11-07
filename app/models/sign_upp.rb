class SignUpp < ActiveRecord::Base
    
    validates :first_name, presence: { message: "Email is required" }
    has_secure_password
    
end
