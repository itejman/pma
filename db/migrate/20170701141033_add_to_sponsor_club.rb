class AddToSponsorClub < ActiveRecord::Migration
  def change
    add_column :clubs, :sponsor_id, :integer
  end
end
