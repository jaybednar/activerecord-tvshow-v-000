class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    high_rating = Show.highest_rating
    Show.find_by(rating: high_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    low_rating = Show.lowest_rating
    Show.find_by(rating: low_rating)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

end
