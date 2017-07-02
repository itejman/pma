class Player < ActiveRecord::Base
  def club
    Club.where(id: club_id).first
  end

  def to_s
    "#{name} #{surname}"
  end

end
