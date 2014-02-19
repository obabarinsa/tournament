class Tournament < ActiveRecord::Base

	has_many: players, :through => :tourney_entry
	has_many: characters, :through => :ban
end