class Reading < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_many :playlist_items, dependent: :destroy
  attr_reader :EAN

  scope :filter_by_status, ->(reading_status, user) { where(reading_status: reading_status, user: user) }
  scope :filter_by_genre, ->(genre, user) { joins(:book).where(books: { genre: genre }, user: user) }
  scope :filter_by_author, ->(author, user) { joins(:book).where(books: { author: author }, user: user) }

end
