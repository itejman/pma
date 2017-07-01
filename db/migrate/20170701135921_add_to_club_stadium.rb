class AddToClubStadium < ActiveRecord::Migration
  def change
    add_column :clubs, :stadium_id, :integer
  end
end
