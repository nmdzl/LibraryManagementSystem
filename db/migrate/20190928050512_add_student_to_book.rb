class AddStudentToBook < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :student, foreign_key: true
  end
end
