class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :game
      t.string :character
      t.string :image_url
    end
  end
end
