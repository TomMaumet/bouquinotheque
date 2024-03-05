class PlaylistsController < ApplicationController

  def index
    raise
    @playlists = Playlist.all
  end
end
