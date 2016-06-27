class CreateCheeseLocations < ActiveRecord::Migration
  def change
    create_table :cheese_locations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
