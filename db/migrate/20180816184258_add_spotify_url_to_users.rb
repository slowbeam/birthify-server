class AddSpotifyUrlToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :spotify_url, :string
    add_column :users, :href, :string
    add_column :users, :uri, :string
  end
end
