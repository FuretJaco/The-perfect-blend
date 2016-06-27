class CreateCheesePates < ActiveRecord::Migration
  def change
    create_table :cheese_pates do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
