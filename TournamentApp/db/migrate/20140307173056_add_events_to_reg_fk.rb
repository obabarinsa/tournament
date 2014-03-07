class AddEventsToRegFk < ActiveRecord::Migration
  def change

  	add_column :registrations, :event_id, :integer
  	add_index :registrations, :event_id 
  end
end
