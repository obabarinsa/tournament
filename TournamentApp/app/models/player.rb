class Player < ActiveRecord::Base
has_many :assigns
has_many :tourney_entries, :dependent => :destroy
has_many :tournaments, :through => :tourney_entries, :dependent => :destroy
has_many :pools, :dependent => :destroy
belongs_to :tournament
validates :registration_id, :presence => true
 belongs_to :pool

	
end

# heroku create 