class Feature < ActiveRecord::Base
  belongs_to :tournament
  validates :tournament, :presence => true
  belongs_to :character
end
