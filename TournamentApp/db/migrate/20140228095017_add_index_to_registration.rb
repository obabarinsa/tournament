class AddIndexToRegistration < ActiveRecord::Migration
  def change
  	add_column :registrations, :tournaments_id, :players_id
  end
end
