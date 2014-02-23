class Tournament < ActiveRecord::Base

belongs_to :event

has_many :players, :through => :tourney_entry
has_many :characters, :through => :feature

end