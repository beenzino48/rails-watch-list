class List < ApplicationRecord
  has_many :bookmarks
  # name cannot be blank
  validates :name, presence: true
  # name is unique
  validates :name, uniqueness: true
  # should destroy child saved movies when destroying self
  has_many :bookmarks, dependent: :destroy
  # This lets get you from bookmarks to movies
  has_many :movies, through: :bookmarks
  # for heroku and cloudinary photos
  has_one_attached :photo
end
