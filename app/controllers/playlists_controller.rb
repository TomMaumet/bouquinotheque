class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
    @playlist_new = Playlist.new
  end

  def show
    @playlist = Playlist.find(params[:id])
    @readings = @playlist.readings
  end

  def create
    @playlist_new = Playlit.new(set_playlist)
    raise
  end

  private

  def set_playlist
    params.require(:playlist).permit(:title)
  end
end
