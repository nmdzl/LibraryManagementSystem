class AddAuthorsToSearches < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :authors, :string
  end
end
