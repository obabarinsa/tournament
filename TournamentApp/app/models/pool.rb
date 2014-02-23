class Pool < ActiveRecord::Base

	has_many :assign
	has_many :players, :through => :assign

end