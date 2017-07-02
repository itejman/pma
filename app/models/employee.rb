class Employee < ActiveRecord::Base
  def club
    Club.where(id: club_id)
  end

  def to_s
    first_name+" "+last_name
  end

  def all_employees_with_ids
    Employee.all.map {||el| [el,el.id] }
  end

end
