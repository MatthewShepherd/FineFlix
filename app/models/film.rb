class Film < ApplicationRecord
  belongs_to :category
  has_many :ratings, as: :rateable
  has_many :reviews
  has_many :comments, as: :commentable
end
