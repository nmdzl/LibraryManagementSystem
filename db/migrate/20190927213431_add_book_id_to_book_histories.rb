class AddBookIdToBookHistories < ActiveRecord::Migration[5.1]
  def change
    add_column :book_histories, :book_id, :integer
  end
end
