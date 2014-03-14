class Character < ActiveRecord::Base

	has_many :features
	has_many :tournaments, :through => :features
	belongs_to :game 
	

end