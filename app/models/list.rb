class List < ApplicationRecord
  has_many :bookmarks
  # This lets get you from bookmarks to movies
  # name cannot be blank
  validates :name, presence: true
  # name is unique
  validates :name, uniqueness: true
  # should destroy child saved movies when destroying self
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
