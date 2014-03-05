class AddColumnsToRegistration < ActiveRecord::Migration
  def change

  	add_column :registrations, :name , :string
  	add_column :registrations, :gamertag , :string
  	add_column :registrations, :address, :string
  	add_column :registrations, :game, :string
  end
end
