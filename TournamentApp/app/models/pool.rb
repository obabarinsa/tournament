class Pool < ActiveRecord::Base

	has_many :assigns, :dependent => :destroy
	has_many :players, :through => :assigns, :dependent => :destroy
	has_many :players,:dependent => :destroy
	validates :player_id, :presence => true


	belongs_to :players
	belongs_to :game




protected
after_find do |pool|
    puts "You have found a pool object!"
  end
end