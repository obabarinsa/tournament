class Feature < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :character
end
