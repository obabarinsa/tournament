class UpdateTourneyEntryTable < ActiveRecord::Migration
  def change
    create_table :tourney_entries, force: true do |t|
      t.belongs_to :tournament, index: true
      t.belongs_to :player, index: true
      t.belongs_to :pool, index: true
      t.belongs_to :registration, index: true

      t.timestamps
    end
  end
end

