class CreateHooligans < ActiveRecord::Migration
  def change
    create_table :hooligans do |t|
      t.string :first_name
      t.string :last_name
      t.string :pesel

      t.timestamps null: false
    end
  end
end
