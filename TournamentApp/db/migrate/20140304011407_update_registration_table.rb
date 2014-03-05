class UpdateRegistrationTable < ActiveRecord::Migration
  def change
    create_table :registrations, force: true do |t|
      t.string :name
      t.string :gamertag
      t.string :address
      t.string :game
      t.integer :tournament_id
      t.integer :player_id
      t.belongs_to :user, index: true

      t.timestamps
    end
    add_index :registrations, :tournament_id
    add_index :registrations, :player_id
  end
end

