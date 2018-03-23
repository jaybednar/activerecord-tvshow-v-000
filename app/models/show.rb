class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.highest_rating
    Show.find_by(rating: show)
  end

  def self.lowest_rating
    
  end 

end
