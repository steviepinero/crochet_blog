class User < ActiveRecord::Base
  has_many :pictures
  has_secure_password
end
 # TODO model the blog posts and login
