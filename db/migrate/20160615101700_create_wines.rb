class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.text :description
      t.date :year
      t.string :image

      t.timestamps null: false
    end
  end
end
