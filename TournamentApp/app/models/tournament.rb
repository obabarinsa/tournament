class Tournament < ActiveRecord::Base

# belongs_to :event
# belongs_to :registration
# belongs_to :player

# has_many :features, :dependent => :destroy
# has_many :tourney_entries, :dependent => :destroy
# has_many :players, :through => :tourney_entries, :dependent => :destroy
# has_many :characters, :through => :features, :dependent => :destroy
# has_many :games, :dependent => :destroy

# accepts_nested_attributes_for :features
# accepts_nested_attributes_for :tourney_entries
#  FKs event_id , registration_id 
end