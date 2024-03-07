class PlaylistItemsController < ApplicationController
  def create
    @reading = Reading.find(params[:id])
    @playlist
    @playlist_item = PlaylistItem.new
  end
end
