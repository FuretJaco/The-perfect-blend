class AddCepageToContent < ActiveRecord::Migration
  def change
  	add_column :contenus, :cepage_id, :integer
  	add_index :contenus, :cepage_id
  end
end
