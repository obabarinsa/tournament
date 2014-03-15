class UpdateEventsCol < ActiveRecord::Migration
  def change
  	change_column :events, :image, :text
  	change_column :events, :rules, :text
  	change_column :characters, :image_url, :text
  	change_column :games, :image, :text
  	change_column :games, :rules, :text

  end
end
