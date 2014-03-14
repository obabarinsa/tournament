class Registration < ActiveRecord::Base

	 belongs_to :user
	 belongs_to :game
	 has_many :tourney_entries, :dependent => :destroy
	 has_many :players, :through => :tourney_entries, :dependent => :destroy
	 has_many :tournaments, :through => :tourney_entries, :dependent => :destroy
	 has_many :players, :dependent => :destroy
	 has_many :tournaments, :dependent => :destroy
	 validates_length_of :name, :within => 6..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
	 validates_length_of :gamertag, :within => 6..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
	 validates_presence_of :address
	 validates_presence_of :game

protected
 after_save do |registration|
    puts "You have saved a registration!"
  end
end
