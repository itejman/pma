class Sponsor < ActiveRecord::Base
  def self.all_sponsor_name_with_ids
    all.map {|el| [el,el.id] }
  end

  def to_s
      name
  end
end
