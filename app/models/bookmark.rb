class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }
  validates :list, uniqueness: { scope: :movie,
                                 message: 'should be unique for a movie and a list' }
end
