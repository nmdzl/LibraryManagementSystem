class AddTitleToSearches < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :title, :string
  end
end
