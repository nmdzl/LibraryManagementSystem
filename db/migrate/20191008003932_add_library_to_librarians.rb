class AddLibraryToLibrarians < ActiveRecord::Migration[5.1]
  def change
    add_reference :librarians, :library, foreign_key: true

  end
end
