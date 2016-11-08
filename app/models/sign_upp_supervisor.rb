class SignUppSupervisor < ActiveRecord::Base
    has_secure_password
    belongs_to :sign_upp
    has_many :sign_upp_security_guards 
    validates_associated :sign_upp 
    validates_associated :sign_upp_security_guards
end
