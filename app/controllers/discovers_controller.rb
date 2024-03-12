class DiscoversController < ApplicationController
  def index
    @suggestions = Suggestion.where(user: current_user)
    @wishlist = Suggestion.where(sender: current_user)
  end
end
