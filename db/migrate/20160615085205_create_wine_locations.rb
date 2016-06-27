class CreateWineLocations < ActiveRecord::Migration
  def change
    create_table :wine_locations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
