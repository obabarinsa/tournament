class Pool < ActiveRecord::Base

	has_many :assigns, :dependent => :destroy
	has_many :players, :through => :assigns, :dependent => :destroy

	# accepts_nested_attributes_for :assigns

end