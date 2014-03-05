class UpdateAssignTable < ActiveRecord::Migration
def change
     create_table :assigns, force: true do |t|
      t.belongs_to :player, index: true
      t.belongs_to :pool, index: true

      t.timestamps
    end
  end
end
