class User < ApplicationRecord
  require 'matrix'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :playlists, dependent: :destroy
  has_many :suggestions, dependent: :destroy
  has_many :readings, dependent: :destroy
  has_many :friend_relationships, dependent: :destroy #(user_id)
  # has_many :second_friend_relationships, dependent: :destroy #(friend_id)
  validates :nickname, presence: true
  validates :city, presence: true
  after_create :create_user_profil_recommandation

  def user_profile
    Vector[self.thriller_score, self.romance_score, self.aventure_score, self.jeunesse_score]
  end


  def update_user_profil_recommandation(new_rating_vector)
  #mean of user profile and weighted new item review
  # Vold = current user profile
  #Vnew = new user profile after rating is factored in
  #Vitem = vector representation of item being review
  #If the review is favorable, use it to calculate new mean
  #If review was negative, use the inverse vector to calculate new mean
  #ex - If a user profile consists of 5 reviews, the effect of a 6th would
  #looks like this:
  #(5 x Vold + Vitem)/6
  #formula: Vnew = ((n x Vold) + Vitem )/ n + 1

  # new_vector_thriller = (@total_reviews * @user_profile[0] + new_rating_vector[0])/(@total_reviews + 1)
  # new_vector_romance = (@total_reviews * @user_profile[1] + new_rating_vector[1])/(@total_reviews + 1)
  # new_vector_aventure = (@total_reviews * @user_profile[2] + new_rating_vector[2])/(@total_reviews + 1)
  # new_vector_jeunesse = (@total_reviews * @user_profile[3] + new_rating_vector[3])/(@total_reviews + 1)

  @total_reviews = Reading.where(user: self).where.not(my_rating: nil).size
    self.thriller_score = (@total_reviews * self.thriller_score + new_rating_vector[0])/(@total_reviews + 1)
    self.romance_score = (@total_reviews * self.romance_score + new_rating_vector[1])/(@total_reviews + 1)
    self.aventure_score = (@total_reviews * self.aventure_score + new_rating_vector[2])/(@total_reviews + 1)
  @user_profile = user_profile()
  return @user_profile
  end

  def similarity_score(book)
    # create a vector for the user the method is being called on
    # attributes needed are board_score, card_score, party_score and players_score
    user_vector = user_profile()
    # next, create a vector for the game being passed in to the method
    # we will then compare the two vectors to see how similar the books are
    book_vector = Vector[book.thriller_score, book.romance_score, book.aventure_score, book.jeunesse_score]
    # now that we have 2 vectors we will find the similarity by putting the dot product in our numerator, and the product of each vectors magnitude in our denominator
    numerator = user_vector.inner_product(book_vector)
    denominator = user_vector.r * book_vector.r
    # this will give the cosine similarity
    score = numerator / denominator*100
    return score
  end

  def recs_books
    book_rec_array = []
    user_profile()
    Book.all.each do |book|
      score = similarity_score(book)
      book_rec_array.push( { book: book, similarity: score } )
    end
    book_rec_array.sort_by{|rec| -rec[:similarity]}
  end

  def update_recommandation_score(new_rating_vector)
    self.update_user_profil_recommandation(new_rating_vector)
  end

  def friends
    friend_ids = (self.friend_relationships.map(&:friend_id) + FriendRelationship.where(friend_id: self.id).map(&:user_id))
    User.where(id: friend_ids)
  end

end
