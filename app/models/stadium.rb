class Stadium < ActiveRecord::Base
  def self.all_stadnium_name_with_ids
    all.map {|el| [el,el.id] }
  end

  def to_s
      name
  end
end
