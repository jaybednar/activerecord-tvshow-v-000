class Show < ActiveRecord::Base

  def self.highest_rating
    Song.maximum(:rating)
  end

end
