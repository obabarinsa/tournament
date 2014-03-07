class RenameGameToGameIdInRegistration < ActiveRecord::Migration
  def change
  	rename_column :registrations, :game, :game_id

  end
end
