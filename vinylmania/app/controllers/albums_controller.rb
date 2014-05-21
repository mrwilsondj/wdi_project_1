class AlbumsController < ApplicationController

require "discogs"

  def index
    # @albums = [Album.get_album]
    # @albums = Album.get_album
      wrapper = Discogs::Wrapper.new("Vinylmania")
    @artist = wrapper.get_artist("U2")

  end

 def all
    @albums = Album.all

  end

  def new

  end

end
