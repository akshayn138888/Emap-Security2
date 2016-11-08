class SignUppSecurityGuard < ActiveRecord::Base
    has_secure_password
    belongs_to :sign_upp_supervisor
    validates_associated :sign_upp_supervisor
end
