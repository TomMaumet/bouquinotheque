class Book < ApplicationRecord
  has_many :readings
  has_many :suggestions
  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :publisher, presence: true
  validates :publishing_date, presence: true
  validates :summary, presence: true
  validates :ISBN, presence: true
end
