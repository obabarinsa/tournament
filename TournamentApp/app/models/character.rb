class Character < ActiveRecord::Base

	has_many :feature
	has_many :tournaments, :through => :feature

end