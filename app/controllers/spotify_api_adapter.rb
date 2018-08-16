class SpotifyAPIAdapter < ApplicationController
  
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
