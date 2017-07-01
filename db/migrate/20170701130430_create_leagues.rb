class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :country
      t.integer :level

      t.timestamps null: false
    end
  end
end
