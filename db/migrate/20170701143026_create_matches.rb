class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :host_id
      t.integer :guest_id
      t.integer :host_goals
      t.integer :guest_goals

      t.timestamps null: false
    end
  end
end
