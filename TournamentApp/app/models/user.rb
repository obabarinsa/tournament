class User < ActiveRecord::Base

	has_secure_password
	validates :name, uniqueness: true 
	validates :email, uniqueness: { scope: :email,
    message: "Sorry, another user has this email." }

	has_many :registrations, :dependent => :destroy

 protected 
  	after_destroy do |user|
		puts "User purged from database"  
	end
end