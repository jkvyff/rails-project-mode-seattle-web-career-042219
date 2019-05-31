class User < ApplicationRecord
	has_many :characters
	validates :username, :uniqueness => true
	validates :password, :presence => true
	validates :password, :length => {:within => 6..40}
	has_secure_password
end
