class PlaylistsController < ApplicationController
  before_action :set_user, only: [:create, :show, :index]

  def index
    @playlists = Playlist.all.where(user_id: @user.id)
    @playlist_new = Playlist.new
  end

  def show
    @playlist = Playlist.find(params[:id])
    @readings = @playlist.readings
  end

  def create
    @playlist_new = Playlist.new(params_playlist)
    @playlist_new.user_id = @user.id
    if @playlist_new.save
      redirect_to playlist_path(@playlist_new)
    else
      @playlists = Playlist.all.where(user_id: @user.id)
      render :index, status: :unprocessable_entity
    end
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(params_playlist)
    redirect_to playlist_path(@playlist)
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    redirect_to playlists_path
  end

  private

  def params_playlist
    params.require(:playlist).permit(:title)
  end

  def set_user
    @user = current_user
  end
end
