class AddGamesToGame < ActiveRecord::Migration
  def change
  	add_column :games, :game, :string
  end
end
