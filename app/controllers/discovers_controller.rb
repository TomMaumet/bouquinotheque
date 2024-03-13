class DiscoversController < ApplicationController
  def index
    @suggestions = Suggestion.where(user: current_user).where.not(sender_id: current_user.id)
    @wishlist = Suggestion.where(sender_id: current_user.id)
    @books = Book.all
    @users = User.all
  end
end
