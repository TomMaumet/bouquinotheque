class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: { in: 0..5 }
end
