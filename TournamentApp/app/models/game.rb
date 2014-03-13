class Game < ActiveRecord::Base
	belongs_to :tournament
	has_many :registrations, :dependent => :destroy
	has_many :pools, :dependent => :destroy
	has_many :characters, :dependent => :destroy


end
