class AddLibrarianToLibraries < ActiveRecord::Migration[5.1]
  def change
    add_column :libraries, :librarian, :string
    add_reference :libraries, :librarian, foreign_key: true
  end
end
