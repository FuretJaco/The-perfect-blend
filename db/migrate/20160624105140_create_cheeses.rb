class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
    add_index :cheeses, :name, unique: true
  end
end
