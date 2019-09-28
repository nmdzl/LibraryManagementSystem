json.extract! book, :id, :isbn, :title, :authors, :language, :published, :edition, :associated_library, :subject, :summary, :special_collection, :created_at, :updated_at
json.url book_url(book, format: :json)
