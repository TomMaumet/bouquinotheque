require "open-uri"
require "json"
require "date"

class BooksController < ApplicationController

  def index
    @books = Book.all
    @genres = Book.pluck(:genre).uniq
    @authors = Book.pluck(:author).uniq

    @books = Book.filter_by_genre(params[:genre]) if params[:genre].present?
    @books = Book.filter_by_author(params[:author]) if params[:author].present?

    case params[:tri]
    when "title a to z" then @books = @books.joins(:book).order(:title)
    when "title z to a" then @books = @books.joins(:book).order(title: :desc)
    when "author a to z" then @books = @books.joins(:book).order(:author)
    when "author z to a" then @books = @books.joins(:book).order(author: :desc)
    end

    respond_to do |format|
      format.html
      format.text { render partial: "books/book_partial", locals: {books: @books}, formats: [:html] }
    end
  end

  def show
    @new_reading = Reading.new
    @book = Book.find(params[:id])
    @new_suggestion = Suggestion.new
    @friends = current_user.friends
    @reading = Reading.find_by(book: @book, user: current_user)
  end

  def new
    result = JSON.parse(URI.open("https://www.googleapis.com/books/v1/volumes?q=isbn:#{params[:EAN]}").read)
    volume_id = result.dig("items", 0, "id")
    if volume_id.nil? || params[:EAN].blank?
      flash.alert = "Entrez un code EAN valide"
      redirect_to new_reading_path
    else
      book_form = JSON.parse(URI.open("https://www.googleapis.com/books/v1/volumes/#{volume_id}").read)
      begin
        publishing_year = DateTime.parse(book_form["volumeInfo"]["publishedDate"]).year
      rescue ArgumentError
        publishing_year = "#{book_form['volumeInfo']['publishedDate']}"
      end
      title = book_form["volumeInfo"]["title"]
      author = book_form["volumeInfo"]["authors"]
      summary = book_form["volumeInfo"]["description"]
      publisher = book_form["volumeInfo"]["publisher"]
      genre = book_form["volumeInfo"]["categories"]
      image_url = book_form["volumeInfo"]["imageLinks"]["thumbnail"]
      thriller_score = rand(0..10)
      romance_score = rand(0..10)
      aventure_score = rand(0..10)
      jeunesse_score = rand(0..10)
      @book = Book.new(title: title, author: author, summary: summary, publisher: publisher, publishing_year: publishing_year, genre: genre, EAN: params[:EAN], image_url: image_url)
    end
  end

  def create
    @book = Book.new(book_params)
    @book.thriller_score = rand(0..10)
    @book.romance_score = rand(0..10)
    @book.aventure_score = rand(0..10)
    @book.jeunesse_score = rand(0..10)
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
