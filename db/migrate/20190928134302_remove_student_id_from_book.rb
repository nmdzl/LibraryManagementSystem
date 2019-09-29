class RemoveStudentIdFromBook < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :student_id
  end
end
