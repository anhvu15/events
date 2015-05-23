class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string 		:name, limit:30
      t.string		:location, limit:50
      t.decimal		:decimal,precision:10, scale:2 
      t.timestamps null: false
    end
  end
end
