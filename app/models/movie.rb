class Movie < ApplicationRecord
  has_many :bookmarks # A movie has many bookmarks, but if delete bookmarks inside the list will not effect the movies
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end
