class RemoveEventFromRegistration < ActiveRecord::Migration
  def change
  	remove_column :registrations, :event_id
  end
end
