class CreateBans < ActiveRecord::Migration
  def change
    create_table :bans do |t|
      t.integer :hooligan_id
      t.integer :stadium_id
      t.integer :number_of_years

      t.timestamps null: false
    end
  end
end
