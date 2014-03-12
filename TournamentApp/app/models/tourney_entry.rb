class TourneyEntry < ActiveRecord::Base
   belongs_to :tournament
   # validates :tournament, :presence => true
   belongs_to :player
   # validates :player, :presence => true
   belongs_to :pool
   belongs_to :registration
   validates :registration_id, :presence => true

end
