class Registration < ActiveRecord::Base

	belongs_to :user
	has_many :tourney_entries, :dependent => :destroy
	has_many :players, :through => :tourney_entries, :dependent => :destroy
	has_many :tournaments, :through => :tourney_entries, :dependent => :destroy

	# accepts_nested_attributes_for :tourney_entries
	# accepts_nested_attributes_for :user
	# belongs_to has foreign key user_id

end
