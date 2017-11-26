class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def average_rating
    return "No rating" if self.ratings.empty?
    self.ratings.reduce(0) {|sum, rating| sum += rating.value} / self.ratings.size
  end
end
