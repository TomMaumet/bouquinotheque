require "open-uri"
require "json"
require "date"

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
    result = JSON.parse(URI.open("https://www.googleapis.com/books/v1/volumes?q=isbn:#{params[:EAN]}").read)
    volume_id = result["items"][0]["id"]
    book_form = JSON.parse(URI.open("https://www.googleapis.com/books/v1/volumes/#{volume_id}").read)
    title = book_form["volumeInfo"]["title"]
    author = book_form["volumeInfo"]["authors"]
    summary = book_form["volumeInfo"]["description"]
    publisher = book_form["volumeInfo"]["publisher"]
    publishing_year = DateTime.parse(book_form["volumeInfo"]["publishedDate"]).year
    genre = book_form["volumeInfo"]["categories"]
    image_url = book_form["volumeInfo"]["imageLinks"]["thumbnail"]
    @book = Book.new(title: title, author: author, summary: summary, publisher: publisher, publishing_year: publishing_year, genre: genre, EAN: params[:EAN], image_url: image_url)
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      Reading.create(user: current_user, book: @book)
      redirect_to readings_path(@readings)
    else
      redirect_to new_book_path(book_params)
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :summary, :publisher, :publishing_year, :genre, :EAN, :image_url)
  end
end
