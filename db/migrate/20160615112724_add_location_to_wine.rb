class AddLocationToWine < ActiveRecord::Migration
  def change
  	add_column :wines, :wine_location_id, :integer
  	add_index :wines, :wineLocation_id
  end
end
