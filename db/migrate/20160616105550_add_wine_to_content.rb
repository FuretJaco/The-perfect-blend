class AddWineToContent < ActiveRecord::Migration
  def change
  	add_column :contenus, :wine_id, :integer
  	add_index :contenus, :wine_id 
  end
end
