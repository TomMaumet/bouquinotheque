class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: { in: 0..5 }

  after_create :update_recommandation_score

  def update_recommandation_score
    self.user.update_user_profil_recommandation(self.book.new_rating_vector)
  end
end
