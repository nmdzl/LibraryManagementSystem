class AddPublishedToSearches < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :published, :string
  end
end
