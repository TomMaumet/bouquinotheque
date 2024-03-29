class SuggestionsController < ApplicationController
  def index
    @suggestions = Suggestion.where(user: current_user).where.not(sender_id: current_user.id)
  end

  def wishlist
    @wishes = Suggestion.where(sender_id: current_user.id)
  end

  def create
    @book = Book.find(params[:book_id])
    @new_suggestion = Suggestion.new(friend_relationships_params)
    @new_suggestion.book = @book
    @new_suggestion.save
  end

  def friend_relationships_params
    params.require(:suggestion).permit(:user_id, :sender_id, :comment, :book_id)
  end
end
