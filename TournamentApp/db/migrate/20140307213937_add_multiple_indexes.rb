class AddMultipleIndexes < ActiveRecord::Migration
  def change
  	add_index :players, :user_id
  	add_index :registrations, :game_id
  	add_index :tournaments , :game_id
  	add_index :tournaments , :player_id
  	add_index :tournaments , :user_id


  end
end
