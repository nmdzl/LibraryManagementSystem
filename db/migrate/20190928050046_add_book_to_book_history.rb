class AddBookToBookHistory < ActiveRecord::Migration[5.1]
  def change
    add_reference :book_histories, :book, foreign_key: true
  end
end
