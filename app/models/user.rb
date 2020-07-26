class User < ApplicationRecord
   require 'bcrypt'

   validates :password, length: { minimum: 6 }, allow_blank: true

   has_secure_password

   validates_uniqueness_of :email_id, :message => "Email Already Exists"  

   
end
