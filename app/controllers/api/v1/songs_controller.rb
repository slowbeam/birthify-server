class Api::V1::SongsController < ApplicationController
  before_action :find_song, only: [:update]

  def index
    @songs = Song.all
    render json: @songs
  end

  def update
    @song.update(song_params)
    if @note.save
      render json: @song, status: :accepted
    else
      render json: { errors: @song.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def song_params
    params.permit(:title, :artist)
  end

  def find_song
    @song = Song.find(params[:id])
  end

end
