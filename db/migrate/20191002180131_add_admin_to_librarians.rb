class AddAdminToLibrarians < ActiveRecord::Migration[5.1]
  def change
    add_column :librarians, :admin, :boolean
  end
end
