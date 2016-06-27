class WineToPairing < ActiveRecord::Migration
  def change
  	add_column :pairings, :wine_id, :integer
  	add_index :pairings, :wine_id
  end
end
