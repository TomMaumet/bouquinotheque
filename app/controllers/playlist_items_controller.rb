class PlaylistItemsController < ApplicationController
  def create
    @playlist_item = PlaylistItem.new()
    @playlists = Playlist.find(params[:playlist_item][:playlist])
    @reading = Reading.find(params[:reading_id])
    @playlist_item.reading_id = @reading.id
    @playlist_item.playlist_id = @playlists.id
    @playlist_item.save
  end

  private

  def set_playlist
    params.require(:playlist_items).permit(:playlist)
  end
end
