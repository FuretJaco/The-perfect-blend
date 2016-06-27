class AddLocationToCheese < ActiveRecord::Migration
  def change
  	add_column :cheeses, :cheese_location_id, :integer 
  	add_index :cheeses, :cheese_location_id
  end
end
