class AddSubjectToSearches < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :subject, :string
  end
end
