class AddColorToWine < ActiveRecord::Migration
  def change
  	add_column :wines, :wine_color_id, :integer
  	add_index :wines, :wine_color_id
  end
end
