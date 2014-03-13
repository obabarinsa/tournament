class ChangeColInGameToName < ActiveRecord::Migration
  def change
  rename_column :games, :game, :name

  end
end
