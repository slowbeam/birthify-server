class Api::V1::SongsController < ApplicationController
  before_action :find_song, only: [:update]

  def index
    @songs = Song.all
    render json: @songs
  end

end
