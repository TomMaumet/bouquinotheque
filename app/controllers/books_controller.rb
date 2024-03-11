require "open-uri"
require "json"

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
    result = JSON.parse(URI.open("https://www.googleapis.com/books/v1/volumes?q=isbn:9782221252055").read)
    title = result["items"][0]["volumeInfo"]["title"]
    @book = Book.new(title: title)
  end

  def create
    @book = Book.new(book_params)
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end
end
