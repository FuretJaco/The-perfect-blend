class AddCategoryToCheese < ActiveRecord::Migration
  def change
  	add_column :cheeses, :cheese_category_id, :integer
  	add_index :cheeses, :cheese_category_id
  end
end
