class Api::V1::SongUsersController < ApplicationController

  def index
    @song_users = SongUser.all
    render json: @song_users
  end
end
