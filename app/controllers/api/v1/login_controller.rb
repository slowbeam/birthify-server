class Api::V1::LoginController < ApplicationController

  def index

    query_params ={
      client_id: 'c4b56144ef3d453581292c34d556ce35',
      response_type: "code",
      redirect_uri: 'http://localhost:3000/api/v1/logging-in',
      scope: "user-library-read user-library-modify user-top-read user-modify-playback-state playlist-modify-public",
      show_dialog: true
    }

    url = "https://accounts.spotify.com/authorize/"

    redirect_to "#{url}?#{query_params.to_query}"
  end
end
