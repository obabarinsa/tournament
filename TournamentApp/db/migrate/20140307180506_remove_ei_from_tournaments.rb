class RemoveEiFromTournaments < ActiveRecord::Migration
  def change
  	remove_column :tournaments, :event_id
  end
end
