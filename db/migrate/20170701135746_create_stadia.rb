class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :address
      t.integer :amount

      t.timestamps null: false
    end
  end
end
