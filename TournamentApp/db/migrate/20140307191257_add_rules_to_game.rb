class AddRulesToGame < ActiveRecord::Migration
  def change
  	add_column :games, :rules, :string
  	add_column :games, :image, :string
  end
end
