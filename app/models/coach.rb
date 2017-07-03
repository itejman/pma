class Coach < ActiveRecord::Base
  validates :first_name, presence: { message: ' nie może być pusty!' }
  validates :last_name, presence: { message: ' nie może byc pusty'}
  validates :age, presence: { message: ' nie może być pusty'}

  def self.all_coach_name_with_ids
    Coach.all.map {|el| [el ,el.id] }
  end

  def to_s
      first_name+" "+last_name
  end

end
