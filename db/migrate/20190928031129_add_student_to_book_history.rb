class AddStudentToBookHistory < ActiveRecord::Migration[5.1]
  def change
    add_reference :book_histories, :student, foreign_key: true
  end
end
