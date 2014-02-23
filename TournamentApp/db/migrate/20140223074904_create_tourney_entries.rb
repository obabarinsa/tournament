class CreateTourneyEntries < ActiveRecord::Migration
  def change
    create_table :tourney_entries do |t|
      t.belongs_to :tournaments, index: true
      t.belongs_to :players, index: true
      t.belongs_to :pools, index: true

      t.timestamps
    end
  end
end
