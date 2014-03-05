class Player < ActiveRecord::Base
has_many :assigns
has_many :tourney_entries, :dependent => :destroy
has_many :tournaments, :through => :tourney_entries, :dependent => :destroy
has_many :pools, :through => :assigns, :dependent => :destroy
belongs_to :registration
# should have FK registration_id 

# accepts_nested_attributes_for :tourney_entries
# accepts_nested_attributes_for :assigns	
end