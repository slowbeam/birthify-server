class AddUriAndIdToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :uri, :string
    add_column :songs, :spotify_id, :string
  end
end
