class CreateContenus < ActiveRecord::Migration
  def change
    create_table :contenus do |t|

      t.timestamps null: false
    end
  end
end
