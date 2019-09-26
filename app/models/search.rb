class Search < ApplicationRecord
  def search_books
    books= Book.all
    books=books.where("published LIKE ? and title LIKE ? and subject LIKE ? and author LIKE ? and is_deleted = ?", "%#{published}%", "%#{title}%", "%#{subject}%", "%#{author}%", false)
    return books
  end
end
