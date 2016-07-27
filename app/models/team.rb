class Team < ActiveRecord::Base
  has_many :rosters
  has_many :users, :through => :rosters

  def owner
    self.rosters.where(is_owner: true).first.user
  end

end
