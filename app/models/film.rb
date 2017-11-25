class Film < ApplicationRecord
  belongs_to :category
  has_many :ratings, as: :rateable
  has_many :reviews
  has_many :comments, as: :commentable

  def average_rating
    self.ratings.reduce(0) {|sum, rating| sum += rating.value} / self.ratings.size
  end
  def film_comments
    self.comments.each do |comment|
      print comment.body
    end
  end

  def film_reviews
    self.reviews.each do |review|
      p review.title
      p review.body
    end
  end
end


