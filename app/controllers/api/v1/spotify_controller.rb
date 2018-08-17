class Api::V1::SpotifyController < ApplicationController

  def search

    search_year = search_params["year"]

    current_user = User.find(1)

    url = 'https://api.spotify.com/v1/search'

    header = {
      Authorization: "Bearer #{current_user["access_token"]}"
    }

    query_params = {
      q: 'year:' + search_year,
      type: 'track',
      limit: 50
    }

    fetchUrl = "#{url}?#{query_params.to_query}"

    search_get_response = RestClient.get(fetchUrl, header)

    search_data = JSON.parse(search_get_response.body)

    search_data["tracks"]["items"].each do |track|
      currentSong = Song.find_or_create_by(artist: track["artists"][0]["name"], title: track["name"], release_date: track["album"]["release_date"])
      SongUser.find_or_create_by(user_id: current_user.id, song_id: currentSong.id)
    end


    redirect_to "http://localhost:3001/"


  end

  def self.refresh_token
    #TODO DELETE BELOW LINE SO WE ALWAYS DEAL WITH THE CURRENT USER
    current_user = User.find(1)

    #Check if user's access token has expired
    if current_user.access_token_expired?
    #Request a new access token using refresh token
    #Create body of request
    body = {
      grant_type: "refresh_token",
      refresh_token: current_user.refresh_token,
      client_id: 'c4b56144ef3d453581292c34d556ce35',
      client_secret: 'e486d8b9155149b1a8cae370b5091849'
    }

    auth_response = RestClient.post('https://accounts.spotify.com/api/token', body)

    auth_params = JSON.parse(auth_response)
    current_user.update(access_token: auth_params["access_token"])
    else
      puts "Current user's access token has not expired"
    end
  end

  private

  def search_params
    params.permit(:year)
  end

end
