class Pool < ActiveRecord::Base

	has_many :assigns, :dependent => :destroy
	has_many :players, :through => :assigns, :dependent => :destroy

# change pools and player
end