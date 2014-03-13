class Pool < ActiveRecord::Base

	has_many :assigns, :dependent => :destroy
	has_many :players, :through => :assigns, :dependent => :destroy
	has_many :players,:dependent => :destroy
	validates :player_id, :presence => true


	belongs_to :players
	belongs_to :game

end