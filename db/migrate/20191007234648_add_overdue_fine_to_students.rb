class AddOverdueFineToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :overdue_fine, :float
  end
end
