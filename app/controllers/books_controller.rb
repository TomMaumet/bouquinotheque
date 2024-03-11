class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @reading = Reading.new
    @book = Book.find(params[:id])
    @new_suggestion = Suggestion.new
    @friends = current_user.friends
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end

end
