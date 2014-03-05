class AddRegIdToPlayer < ActiveRecord::Migration
  def change
  	add_column :players, :registration_id, :integer
  end
end
