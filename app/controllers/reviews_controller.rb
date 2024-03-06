class ReviewsController < ApplicationController

  def index
    @book = Book.find(params[:book_id])
    @reviews = Review.all
  end
end
