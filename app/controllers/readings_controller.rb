class ReadingsController < ApplicationController

  def index
    @readings = Reading.all
  end

  # def new
  #   @book = Book.find(params[:book_id])
  #   @reading = Reading.new
  # end

  # def create
  #   @reading = Reading.new(reading_params)
  #   @reading.book = @book
  #   @reading.save
  #   redirect_to reading_path(@readings)
  # end

  # private

  # def reading_params
  #   params.require(:reading).permit(:comment, :my_rating, :reading_status, :shared_to)
  # end

end
