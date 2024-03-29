require 'matrix'

class Book < ApplicationRecord
  has_many :readings
  has_many :suggestions
  has_many :reviews

  validates :title, presence: true
  validates :author, presence: true
  # validates :genre, presence: true
  validates :publisher, presence: true
  validates :publishing_year, presence: true
  validates :summary, presence: true
  validates :EAN, presence: true
  # validates :ratings, presence: true
  # validates :book_type, presence: true
  validates :image_url, presence: true
  before_validation :set_default_image_url

  scope :filter_by_genre, ->(genre) { where(genre: genre) }
  scope :filter_by_author, ->(author) { where(author: author) }

  def similarity_score_book(book)
    vector_a = Vector[self.thriller_score, self.romance_score, self.aventure_score, self.jeunesse_score]
    #next, create a vector for the game being passed in to the method
    #we will then compare the two vectors to see how similar the games are
    vector_b = Vector[book.thriller_score, book.romance_score, book.aventure_score, book.jeunesse_score]
    #now that we have 2 vectors we will find the similarity by putting the dot product
    #in our numerator, and the product of each vectors magnitude in our denominator
    numerator = vector_a.inner_product(vector_b)
    denominator = vector_a.r * vector_b.r
    #this will give the cosine similarity
    score = numerator / denominator * 100
    return score.to_i
    #since cosine is a decimal between 0 and 1, multiplying by 100 and then rounding to the nearest integer gives a nice scoring system from 0 to 100
  end

  def new_rating_vector
    Vector[self.thriller_score, self.romance_score, self.aventure_score, self.jeunesse_score]
  end

  def isbn
    return ISBN.ten(self.EAN.strip)
  end

  def set_default_image_url
    self.image_url ||= default_image_url if image_url.blank?
  end

  def default_image_url
    "https://i.imgur.com/BaQcS05.png"
  end
end
