class Api::V1::GenresController < ApplicationController

  def index
    @genres = Genre.all
    render json: @genres
  end

  def create
    current_user = User.find(1)

    header = {
      Authorization: "Bearer #{current_user["access_token"]}"
    }

    genre_get_response = RestClient.get('https://api.spotify.com/v1/recommendations/available-genre-seeds', header)

    genres = JSON.parse(genre_get_response.body)

    genres["genres"].each do |genre_name|
      Genre.create(name: genre_name)
    end

    redirect_to "http://localhost:3001/"


  end

end
