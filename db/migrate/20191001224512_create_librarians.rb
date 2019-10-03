class CreateLibrarians < ActiveRecord::Migration[5.1]
  def change
    create_table :librarians do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :library
      t.boolean :librarian

      t.timestamps
    end
  end
end
