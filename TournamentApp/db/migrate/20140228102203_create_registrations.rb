class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :gamertag
      t.string :address
      t.string :game
      t.integer :tournaments_id
      t.integer :players_id

      t.timestamps
    end
    add_index :registrations, :tournaments_id
    add_index :registrations, :players_id
  end
end
