class Film < ApplicationRecord
  belongs_to :category
  has_many :ratings, as: :rateable
  has_many :reviews
  has_many :comments, as: :commentable

  def average_rating
    self.ratings.reduce(0) {|sum, rating| sum += rating.value} / self.ratings.size
  end

end


