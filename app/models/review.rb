class Review < ApplicationRecord
  belongs_to :user
  belongs_to :film
  has_many :ratings, as: :rateable
  has_many :comments, as: :commentable

  validates :title, :body, presence: true
end
