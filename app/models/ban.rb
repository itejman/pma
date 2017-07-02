class Ban < ActiveRecord::Base

  def stadium
    Stadium.where(id: stadium_id).first
  end

  def hooligan
    Hooligan.where(id: hooligan_id).first
  end

end
