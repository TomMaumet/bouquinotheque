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
    result = JSON.parse(URI.open("https://www.googleapis.com/books/v1/volumes?q=isbn:9782014001334").read)
    book_id = result["items"][0]["id"]
    book_form = JSON.parse(URI.open("https://www.googleapis.com/books/v1/volumes/#{book_id}").read)
    title = book_form["volumeInfo"]["title"]
    author = book_form["volumeInfo"]["authors"]
    summary = book_form["volumeInfo"]["description"]
    publisher = book_form["volumeInfo"]["publisher"]
    publishing_year = book_form["volumeInfo"]["publishedDate"]
    @book = Book.new(title: title, author: author, summary: summary, publisher: publisher, publishing_year: publishing_year)
  end

  def create
    @book = Book.new(book_params)
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end
end
