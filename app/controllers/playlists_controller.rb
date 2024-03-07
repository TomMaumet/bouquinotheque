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
      render playlists_path, status: :unprocessable_entity
    end
  end

  private

  def params_playlist
    params.require(:playlist).permit(:title)
  end

  def set_user
    @user = current_user
  end
end
