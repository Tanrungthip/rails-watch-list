class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates_associated :movie
  validates_associated :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
