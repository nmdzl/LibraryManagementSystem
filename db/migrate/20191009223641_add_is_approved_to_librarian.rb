class AddIsApprovedToLibrarian < ActiveRecord::Migration[5.1]
  def change
    add_column :librarians, :is_approved, :boolean
  end
end
