class TourneyEntry < ActiveRecord::Base
   belongs_to :tournament
   belongs_to :player
   belongs_to :pool
   belongs_to :registration
   validates :registration_id, :presence => true

end
