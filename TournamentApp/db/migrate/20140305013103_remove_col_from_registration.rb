class RemoveColFromRegistration < ActiveRecord::Migration
  def change
  	remove_column :registrations, :player_id
  	remove_column :registrations, :tournament_id
  	
  end
end
