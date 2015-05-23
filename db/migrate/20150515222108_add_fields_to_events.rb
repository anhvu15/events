class AddFieldsToEvents < ActiveRecord::Migration
  def up
  	add_column :events,:string,:description,limit: 200,:after => :name
  	add_column :events,:datetime,:starts_at
  end
  def down
  	remove_column :events,:description
  	remove_column :events,:starts_at
  end
end
