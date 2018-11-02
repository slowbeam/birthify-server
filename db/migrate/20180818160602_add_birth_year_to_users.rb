class AddBirthYearToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birth_year, :string
  end
end
