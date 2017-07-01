class Club < ActiveRecord::Base



def self.all_club_name_with_ids
  Club.all.map {|el| [el.name,el.id] }
end


def to_s
  name
end

end
