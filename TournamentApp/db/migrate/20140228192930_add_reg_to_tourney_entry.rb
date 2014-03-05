class AddRegToTourneyEntry < ActiveRecord::Migration
  def change
  	add_column :tourney_entries, :registrations_id, :integer
  	add_index :tourney_entries, :registrations_id
  end
end
