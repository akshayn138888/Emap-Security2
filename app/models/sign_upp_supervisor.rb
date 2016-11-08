class SignUppSupervisor < ActiveRecord::Base
    has_secure_password
    validates :first_name, :last_name, :email, :password, presence: true
    validates :first_name, :last_name, length: { minimum: 2 }
    
    validates :password, length: { in: 6..20 }
  
    validates :email, uniqueness: true

    belongs_to :sign_upp
    has_many :sign_upp_security_guards 
    validates_associated :sign_upp 
    validates_associated :sign_upp_security_guards
end
