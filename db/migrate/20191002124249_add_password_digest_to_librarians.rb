class AddPasswordDigestToLibrarians < ActiveRecord::Migration[5.1]
  def change
    add_column :librarians, :password_digest, :string
  end
end
