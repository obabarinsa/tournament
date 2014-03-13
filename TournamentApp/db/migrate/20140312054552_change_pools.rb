class ChangePools < ActiveRecord::Migration
  def change
  	remove_column :pools, :game
  	remove_column :pools, :gamertag
  	remove_column :pools, :ranking
  	remove_column :pools, :pool_group
  	add_column :pools, :game_id, :integer
  	add_column :pools, :player_id, :integer 
  	add_index :pools, :game_id
  	add_index :pools, :player_id 
  end
end
