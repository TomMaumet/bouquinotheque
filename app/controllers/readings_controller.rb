class ReadingsController < ApplicationController
  before_action :set_reading, only: [:show, :update, :destroy]

  def index
    @readings = Reading.where(user: current_user)
  end

  def show
    @playlist_item = PlaylistItem.new
  end

  def destroy
    @reading.destroy
    redirect_to readings_path
  end

  def update
    @reading.update(reading_params)
    redirect_to reading_path(@reading)
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

  private

  def set_reading
    @reading = Reading.find(params[:id])
  end

  def reading_params
    params.require(:reading).permit(:comment, :my_rating, :reading_status, :shared_to)
  end

end
