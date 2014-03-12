class Game < ActiveRecord::Base
	belongs_to :tournament
	# validates :tournament, :presence => true
	has_many :registrations
end
