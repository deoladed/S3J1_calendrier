require 'pry'

class User
	attr_accessor :name, :email
	@@all_users = []

	def initialize(email_to_save)
		@email = email_to_save
		@@all_users << self
	end

	def self.all
		return @@all_users
	end

	def self.find_by_email(email)
		@@all_users.each do |user|
		return user if user.email == email
		end
	end

end
# User.new("julie@julie.com")
# User.new("jean@jean.com")

# 	binding.pry

# julie = User.find_by_email("julie@julie.com")
# jean = User.find_by_email("jean@jean.com")
