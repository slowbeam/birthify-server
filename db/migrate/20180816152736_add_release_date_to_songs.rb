class AddReleaseDateToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :release_date, :date
    add_column :songs, :cover, :string
  end
end
