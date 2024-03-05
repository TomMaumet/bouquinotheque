class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: destroy
  has_many :playlists, dependent: destroy
  has_many :suggestions, dependent: destroy
  has_many :readings, dependent: destroy
  validates :nickname, presence: true
  validates :city, presence: true
end
