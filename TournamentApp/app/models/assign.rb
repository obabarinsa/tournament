class Assign < ActiveRecord::Base
  belongs_to :player
  # validates :player, :presence => true
  belongs_to :pool
  # validates :pool, :presence => true
end
