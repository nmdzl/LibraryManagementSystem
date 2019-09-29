class RemoveBookIdFromBookHistories < ActiveRecord::Migration[5.1]
  def change
    remove_column :book_histories, :book_id
    remove_column :book_histories, :student_id
  end
end
