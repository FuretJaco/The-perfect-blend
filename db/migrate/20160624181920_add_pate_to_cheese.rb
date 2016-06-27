class AddPateToCheese < ActiveRecord::Migration
  def change
  	add_column :cheeses, :cheese_pate_id, :integer
  	add_index :cheeses, :cheese_pate_id
  end
end
