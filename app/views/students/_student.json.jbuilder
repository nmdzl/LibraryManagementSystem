json.extract! student, :id, :email, :name, :password, :educational_level, :university, :max_book, :created_at, :updated_at
json.url student_url(student, format: :json)
