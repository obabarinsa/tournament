class AddPlayerIdToTournaments < ActiveRecord::Migration
  def change
  	add_column :tournaments, :player_id, :integer
  end
end
