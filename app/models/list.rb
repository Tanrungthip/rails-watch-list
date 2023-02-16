class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # When you delete a list, you should delete all associated bookmarks
  validates :name, presence: true, uniqueness: true
end
