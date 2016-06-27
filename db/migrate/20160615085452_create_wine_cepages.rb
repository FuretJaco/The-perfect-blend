class CreateWineCepages < ActiveRecord::Migration
  def change
    create_table :wine_cepages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
