class Show < ActiveRecord::Base

  def highest_rating
    Song.maximum(:rating)
  end

end
