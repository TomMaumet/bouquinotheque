class Book < ApplicationRecord
  has_many :readings
  has_many :suggestions
  has_many :reviews

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :publisher, presence: true
  validates :publishing_year, presence: true
  validates :summary, presence: true
  validates :EAN, presence: true
  validates :ratings, presence: true
  validates :book_type, presence: true
  validates :image_url, presence: true
end
