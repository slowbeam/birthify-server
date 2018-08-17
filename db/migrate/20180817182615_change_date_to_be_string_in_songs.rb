class ChangeDateToBeStringInSongs < ActiveRecord::Migration[5.2]
  def change
    change_column :songs, :release_date, :string
  end
end
