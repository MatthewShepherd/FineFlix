class Film < ApplicationRecord
  belongs_to :category
  has_many :ratings, as: :rateable
  has_many :reviews
  has_many :comments, as: :commentable

  after_create :fetch_images


  def average_rating
    self.ratings.reduce(0) {|sum, rating| sum += rating.value} / self.ratings.size
  end

  def fetch_images
    @adapter = ImdbAdapter.new
    eap self.title
    images = @adapter.search_by_title(self.title)
    return nil if images.nil?
    self.image_url = images['large']
    self.thumbnail_url = images['thumb']
    self.save
  end

end


