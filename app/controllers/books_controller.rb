class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @reading = Reading.new
    @book = Book.find(params[:id])
  end

end
