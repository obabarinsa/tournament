class Character < ActiveRecord::Base

	has_many :features
	has_many :tournaments, :through => :features


end