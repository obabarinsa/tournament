class AddIndexToPlayer < ActiveRecord::Migration
  def change

  	add_index :players, :registration_id
  end
end
