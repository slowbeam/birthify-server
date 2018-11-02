class Song < ApplicationRecord
  has_many :song_users
  has_many :users, through: :song_users
end
