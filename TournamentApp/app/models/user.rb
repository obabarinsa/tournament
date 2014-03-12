class User < ActiveRecord::Base

	has_secure_password
	validates :name, uniqueness: true 
	validates :email, uniqueness: { scope: :email,
    message: "Sorry, another user has this email." }

	has_many :registrations, :dependent => :destroy

end
