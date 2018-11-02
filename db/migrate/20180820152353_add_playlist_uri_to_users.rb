class AddPlaylistUriToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :playlist_uri, :string
  end
end
