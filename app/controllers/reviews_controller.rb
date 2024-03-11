class ReviewsController < ApplicationController
  def index
    @book = Book.find(params[:book_id])
    @reviews = Review.where(book: @book)
    @review = Review.new
  end

  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book = @book
    @review.user = current_user
    if @review.save
      redirect_to book_reviews_path(@book)
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :rating, :content)
  end
end
