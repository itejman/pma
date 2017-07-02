class Club < ActiveRecord::Base

  def self.all_club_name_with_ids
    all.map {|el| [el.name,el.id] }
  end


  def to_s
    name
  end

  def league
    League.where(id: league_id).first
  end

  def coach
    Coach.where(id: coach_id).first
  end

  def stadium
    Stadium.where(id: coach_id).first
  end

  def sponsor
    Sponsor.where(id: sponsor_id).first
  end

end
