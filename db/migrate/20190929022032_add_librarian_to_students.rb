class AddLibrarianToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :librarian, :boolean
  end
end
