class Player < ActiveRecord::Base

	belongs_to: tournaments, :through => tourney_entry #not sure 
	has_many 
end