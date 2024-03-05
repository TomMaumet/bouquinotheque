class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.last
    raise
  end
end
