class Reading < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_many :playlist_items, dependent: :destroy
  attr_reader :EAN
end
