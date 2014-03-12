class Registration < ActiveRecord::Base

	 belongs_to :user
	 # validates :user, :presence => true
	 belongs_to :game
	 # validates :game, :presence => true

	 has_many :tourney_entries, :dependent => :destroy
	 has_many :players, :through => :tourney_entries, :dependent => :destroy
	 has_many :tournaments, :through => :tourney_entries, :dependent => :destroy
	 has_many :players, :dependent => :destroy
	 has_many :tournaments, :dependent => :destroy
	 # accepts_nested_attributes_for :tournaments

	 validates_length_of :name, :within => 6..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
	 validates_length_of :gamertag, :within => 6..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
	 validates_presence_of :address
	 validates_presence_of :game




	

end
