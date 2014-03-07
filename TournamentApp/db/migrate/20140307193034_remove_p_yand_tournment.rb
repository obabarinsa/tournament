class RemovePYandTournment < ActiveRecord::Migration
  def change
  	remove_column :players, :name
  	remove_column :players, :address
  	remove_column :players, :gamertag
  	remove_column :tournaments, :game
  	# add_column :tournaments, :game_id
  end
end
