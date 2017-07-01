class AddtoClubCoachId < ActiveRecord::Migration
  def change
    add_column :clubs, :coach_id, :integer
  end
end
