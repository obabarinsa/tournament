class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :game
      t.string :gamertag
      t.integer :ranking
      t.integer :pool_group
    end
  end
end
