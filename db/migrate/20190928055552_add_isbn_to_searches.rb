class AddIsbnToSearches < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :isbn, :string
  end
end
