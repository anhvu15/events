class CreateEvents < ActiveRecord::Migration
  def change
    drop_table :events
    create_table :events do |t|   	
    t.string :name,limit: 30
	t.string :location,limit: 50
	t.decimal :price,precision: 8,scale: 2
	t.timestamps null: false
    end
  end
end
