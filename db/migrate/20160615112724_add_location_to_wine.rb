class AddLocationToWine < ActiveRecord::Migration
  def change
  	add_column :wines, :wine_location_id, :integer
  	add_index :wines, :wine_location_id
  end
end
