class User < ApplicationRecord
	has_many :characters
	attr_accessor :current_password
	validates :username, :uniqueness => true
	validates :password, :presence => true
	validates :password, :length => {:within => 6..40}
	has_secure_password
end
