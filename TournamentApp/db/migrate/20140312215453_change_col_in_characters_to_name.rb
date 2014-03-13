class ChangeColInCharactersToName < ActiveRecord::Migration
  def change
  	rename_column :characters, :game, :name
  end
end
