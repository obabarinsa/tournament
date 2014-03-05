class AddEventIdAndRegIdToTournament < ActiveRecord::Migration
  def change
  	  	add_column :tournaments, :registration_id, :integer
  	  	add_column :tournaments, :event_id, :integer

  	  	add_index :tournaments, :registration_id

  	  	add_index :tournaments, :event_id


  end
end
