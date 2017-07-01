class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :surname
      t.string :age
      t.string :position
      t.string :growth

      t.timestamps null: false
    end
  end
end
