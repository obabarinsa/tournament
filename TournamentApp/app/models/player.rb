class Player < ActiveRecord::Base

has_many :tournaments, :through => :tourney_entry
has_many :pools, :through => :assign
	
end