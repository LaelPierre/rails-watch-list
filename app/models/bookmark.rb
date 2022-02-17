class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, inclusion: { in: 0..5 }
end
