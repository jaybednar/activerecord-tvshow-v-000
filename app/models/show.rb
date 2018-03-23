class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.highest_rating
    Show.where(rating: show)
  end

end
