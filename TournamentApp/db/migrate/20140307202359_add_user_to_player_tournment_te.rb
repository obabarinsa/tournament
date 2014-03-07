class AddUserToPlayerTournmentTe < ActiveRecord::Migration
  def change
  	add_column :players, :user_id, :integer
  	add_column :tournaments, :user_id, :integer
  	add_column :tourney_entries, :user_id, :integer
  end
end
