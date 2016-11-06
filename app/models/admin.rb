<<<<<<< HEAD
class Admin < ActiveRecord::Base

  attr_accessor :password
  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create
=======
class Admin < ActiveRecord ::Base
>>>>>>> 0704c64d1569d40f1b525d8a72af060b33b01725

    has_secure_password

end
