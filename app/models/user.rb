class User < ApplicationRecord
  has_many :song_users
  has_many :songs, through: :song_users


  def access_token_expired?
    (Time.now - self.updated_at) > 3300
  end

end
