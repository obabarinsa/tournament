class AddRegToUsers < ActiveRecord::Migration
  def change
	add_column :registrations, :users_id, :integer
	add_index :registrations, :users_id 
end
end