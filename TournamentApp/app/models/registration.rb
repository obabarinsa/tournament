class Registration < ActiveRecord::Base

	 belongs_to :user
	 belongs_to :game

	 has_many :tourney_entries, :dependent => :destroy
	 has_many :players, :through => :tourney_entries, :dependent => :destroy
	 has_many :tournaments, :through => :tourney_entries, :dependent => :destroy
	 has_many :players, :dependent => :destroy
	 has_many :tournaments, :dependent => :destroy

	

end
