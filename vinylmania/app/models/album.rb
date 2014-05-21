class Album < ActiveRecord::Base
  # attr_accessible :artist,  :title, :label

  # belongs_to :user

  def self.get_album
    # require 'discogs'
    wrapper = Discogs::Wrapper.new("Vinylmania")
    artist = wrapper.get_artist("U2")
    # return album
  end

  def self.save_album(album)
    new_album = Album.new
    new_album.save
  end


end
