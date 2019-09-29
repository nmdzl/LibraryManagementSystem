class AddStudentIdToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :student_id, :integer
  end
end
