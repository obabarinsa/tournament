class Event < ActiveRecord::Base

	has_many :tournaments, :dependent => :destroy
	has_many :registrations, :dependent => :destroy

end