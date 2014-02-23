class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.belongs_to :tournaments, index: true
      t.belongs_to :characters, index: true

      t.timestamps
    end
  end
end
