class AddRulesToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :rules, :string
  	remove_column :tournaments, :rules
  end
end
