class Feature < ActiveRecord::Base
  belongs_to :tournaments
  belongs_to :characters
end
