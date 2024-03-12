class BookStoresController < ApplicationController
  def index
    @book_stores = BookStore.all
  end
end
