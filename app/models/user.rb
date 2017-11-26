class User < ApplicationRecord
  has_secure_password

  has_many :ratings
  has_many :reviews
  has_many :comments

  validates :username, :email, presence: true, uniqueness: true
end
