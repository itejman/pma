class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :salary
      t.references :club, index: true, foreign_key: true
      t.integer :menager_id

      t.timestamps null: false
    end
  end
end
