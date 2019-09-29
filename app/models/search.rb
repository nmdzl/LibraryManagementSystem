class Search < ApplicationRecord
  def search_books
    books= Book.all
    books=books.where("published LIKE ? and title LIKE ? and subject LIKE ? and authors LIKE ? ", "%#{published}%", "%#{title}%", "%#{subject}%", "%#{authors}%")
    return books
  end

end
