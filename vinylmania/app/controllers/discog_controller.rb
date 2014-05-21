class DiscogController < ApplicationController

require 'discogs'
    # https://github.com/buntine/discogs/wiki
    wrapper = Discogs::Wrapper.new("Vinylmania")

    def callback
      # @discog = Discogs::Wrapper.new("nvxZwnVOcYOILntRSqgBiolAsWDJeruf")
      @artist = wrapper.get_artist("Master's Hammer")
    end

    def search
      artist = wrapper.get_artist( params[:discogs_search_artist] )
    end

end


# the base URL is: http:://api.discogs.com/
# {
# documentation_url: "http://www.discogs.com/developers/",
# statistics: {
# labels: 604848,
# releases: 4901288,
# artists: 3347608
# },
# hello: "Welcome to the Discogs API.",
# api_version: "2.0"
# }
