class AddFieldsToEventsTable < ActiveRecord::Migration
  def change
  	add_column :events,:description,:string,limit: 200
  	add_column :events,:starts_at,:datetime
  end
end
