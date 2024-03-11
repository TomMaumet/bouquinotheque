class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :playlists, dependent: :destroy
  has_many :suggestions, dependent: :destroy
  has_many :readings, dependent: :destroy
  has_many :friend_relationships, dependent: :destroy #(user_id)
#  has_many :second_friend_relationships, dependent: :destroy #(friend_id)

  validates :nickname, presence: true
  validates :city, presence: true

  def friends
    friend_ids = (self.friend_relationships.map(&:friend_id) + FriendRelationship.where(friend_id: self.id).map(&:user_id))
    User.where(id: friend_ids)
  end

end
