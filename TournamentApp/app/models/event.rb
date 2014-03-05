class Event < ActiveRecord::Base

	has_many :tournaments, :dependent => :destroy

end