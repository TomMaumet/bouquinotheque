class Playlist < ApplicationRecord
  belongs_to :user
  has_many :playlist_item
  has_many :readings, through: :playlist_item
  validates :title, presence: true
end
