class AddCheeseToPairing < ActiveRecord::Migration
  def change
  	add_column :pairings, :cheese_id, :integer
  	add_index :pairings, :cheese_id
  end
end
