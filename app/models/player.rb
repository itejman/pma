class Player < ActiveRecord::Base

  def self.all_player_name_and_surname_with_ids
    Player.all.map {|p| [p.name, p.surname, p.club_id]}
  end

  def club
    Club.where(id: club_id).first
  end

  def to_s
    "#{name} #{surname}"
  end

end
