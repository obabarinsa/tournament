class Game < ActiveRecord::Base
	belongs_to :tournament
	has_many :registrations
end
