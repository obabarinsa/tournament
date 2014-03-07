class Tournament < ActiveRecord::Base

 belongs_to :game
 belongs_to :registration
 belongs_to :player
 belongs_to :user

 has_many :features, :dependent => :destroy
 has_many :tourney_entries, :dependent => :destroy
 # has_many :players, :through => :tourney_entries, :dependent => :destroy
 has_many :characters, :through => :features, :dependent => :destroy
# has_many :games, :dependent => :destroy


end