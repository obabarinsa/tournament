class Player < ActiveRecord::Base
has_many :assigns
has_many :tourney_entries, :dependent => :destroy
has_many :tournaments, :through => :tourney_entries, :dependent => :destroy
has_many :pools, :through => :assigns, :dependent => :destroy
belongs_to :tournament
# belongs_to :pool

	
end