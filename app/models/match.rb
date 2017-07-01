class Match < ActiveRecord::Base

  def host
    Club.where(id: host_id).first
  end

  def guest
    Club.where(id: guest_id).first
  end

end
