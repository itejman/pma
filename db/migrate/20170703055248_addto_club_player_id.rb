class AddtoClubPlayerId < ActiveRecord::Migration
  def change
    add_column :clubs, :player_id, :integer
  end
end
