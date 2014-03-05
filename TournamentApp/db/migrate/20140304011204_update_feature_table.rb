class UpdateFeatureTable < ActiveRecord::Migration
   def change
    create_table :features, force: true do |t|
      t.belongs_to :tournament, index: true
      t.belongs_to :character, index: true

      t.timestamps
    end
  end
end