class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  #  comment cannot be shorter than 6 characters
  validates :comment, length: { minimum: 6 }

  # you dont want 2 bookmarks that have the same list/movie pair
  # do this by validating the uniqueness for this pair
  validates :movie, uniqueness: { scope: :list }
end
