class ReadingsController < ApplicationController
  before_action :set_reading, only: [:show, :update, :destroy]

  def index
    @genres = Book.pluck(:genre).uniq.sort
    @authors = Book.pluck(:author).uniq.sort

    @readings = Reading.where(user: current_user)

    @readings = Reading.filter_by_status(params[:reading_status], current_user) if params[:reading_status].present?
    @readings = Reading.filter_by_genre(params[:genre], current_user) if params[:genre].present?
    @readings = Reading.filter_by_author(params[:author], current_user) if params[:author].present?

    case params[:tri]
    when "titleaz" then @readings = @readings.joins(:book).order(:title)
    when "titleza" then @readings = @readings.joins(:book).order(title: :desc)
    when "authoraz" then @readings = @readings.joins(:book).order(:author)
    when "authorza" then @readings = @readings.joins(:book).order(author: :desc)
    else @readings = @readings.joins(:book).order(:title)
    end

    respond_to do |format|
      format.html
      format.text { render partial: "readings/reading_partial", locals: {readings: @readings}, formats: [:html] }
    end
  end

  def show
    @new_playlist_item = PlaylistItem.new
    # @playlist_item = PlaylistItem.where(reading: @reading)
    @playlists = Playlist.where(user: current_user)
  end

  def destroy
    @reading.destroy
    redirect_to readings_path
  end

  def update
    @reading.update(reading_params)
    unless @reading.my_rating.nil?
      current_user.update_recommandation_score((@reading.book.new_rating_vector * @reading.my_rating)/5)
    end
    current_user.save
    redirect_to reading_path(@reading)
  end

  def new
    @titles = Book.pluck(:title).uniq
    @reading = Reading.new
  end

  def create
    @readings = Reading.where(user: current_user)
    @reading = Reading.new
    if params[:reading][:book_id].present?
      @book = Book.find(params[:reading][:book_id])
    elsif params[:reading][:title].present?
      @book = Book.find_by(title: params[:reading][:title])
    else
      @book = Book.find_by(EAN: params[:reading][:EAN])
    end
    @reading.book = @book
    @reading.user = current_user
    if @readings.find_by(book_id: @reading.book.id)
      redirect_to new_reading_path
      @titles = Book.pluck(:title).uniq
      flash.alert = "Ce livre est déjà présent dans votre bibliothèque"
    elsif @reading.save
      redirect_to reading_path(@reading)
    else
      redirect_to new_book_path(reading_params)
    end
    end

  private

  def set_reading
    @reading = Reading.find(params[:id])
  end

  def reading_params
    params.require(:reading).permit(:comment, :my_rating, :reading_status, :shared_to, :title, :EAN)
  end
end
