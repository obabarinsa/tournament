class CreateAssigns < ActiveRecord::Migration
  def change
    create_table :assigns do |t|
      t.belongs_to :players, index: true
      t.belongs_to :pools, index: true

      t.timestamps
    end
  end
end
