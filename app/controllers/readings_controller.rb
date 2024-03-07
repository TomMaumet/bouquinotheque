class ReadingsController < ApplicationController
  before_action :set_reading, only: [:show, :update, :destroy]

  def index
    if params[:genre].present?
      @readings = Reading.joins(:book).where(books: { genre: params[:genre] }, user: current_user)
    else
      @readings = Reading.where(user: current_user)
    end
  end

  def show
    @playlist_item = PlaylistItem.new
    @playlists = Playlist.where(user: current_user)
  end

  def destroy
    @reading.destroy
    redirect_to readings_path
  end

  def update
    @reading.update(reading_params)
    redirect_to reading_path(@reading)
  end


  def new
    @reading = Reading.new
  end

  def create
    @reading = Reading.new
    @book = Book.find(params[:reading][:book_id])
    @reading.book = @book
    @reading.user = current_user
    @reading.save
    redirect_to reading_path(@reading)
  end

  private

  def set_reading
    @reading = Reading.find(params[:id])
  end

  def reading_params
    params.require(:reading).permit(:comment, :my_rating, :reading_status, :shared_to)
  end

end
