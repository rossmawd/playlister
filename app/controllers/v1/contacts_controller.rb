class V1::ContactsController < ApplicationController
  def index
    @playlists = Playlist.all

    render json @playlists, status: :ok
  end

end
