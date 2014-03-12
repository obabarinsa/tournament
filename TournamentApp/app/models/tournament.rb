class Tournament < ActiveRecord::Base

 belongs_to :game
 # validates :game, :presence => true
 belongs_to :registration
 validates :registration_id, :presence => true
 belongs_to :player
 # validates :player, :presence => true
 belongs_to :user
 # validates :user, :presence => true
 # attr_accessible :game_id

 has_many :features, :dependent => :destroy
 has_many :tourney_entries, :dependent => :destroy
 # has_many :players, :through => :tourney_entries, :dependent => :destroy
 has_many :characters, :through => :features, :dependent => :destroy
# has_many :games, :dependent => :destroy


end