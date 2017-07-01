class Coach < ActiveRecord::Base

  def self.all_coach_name_with_ids
    all.map {|el| [el,el.id] }
  end

  def to_s
      first_name+" "+last_name
  end

end
