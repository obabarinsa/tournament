class TourneyEntry < ActiveRecord::Base
  belongs_to :tournaments
  belongs_to :players
  belongs_to :pools
end
