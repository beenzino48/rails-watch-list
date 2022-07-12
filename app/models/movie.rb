class Movie < ApplicationRecord
  # movie has many bookmarks
  has_many :bookmarks
  # validates that the title is unqiue and present
  validates :title, presence: true, uniqueness: true
  validates :title, presence: true
  # validates the overview is present
  validates :overview, presence: true
end
