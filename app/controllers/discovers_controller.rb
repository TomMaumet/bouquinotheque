class DiscoversController < ApplicationController
  def index
    @books = Book.all
  end
end