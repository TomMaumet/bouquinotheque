class Suggestion < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates :comment, presence: true

  def sender
    User.find_by(id: sender_id)
  end
end
