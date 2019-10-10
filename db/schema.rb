# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20191009224402) do

  create_table "book_histories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "chk_out_dt"
    t.datetime "chk_in_date"
    t.integer "student_id"
    t.integer "book_id"
    t.index ["book_id"], name: "index_book_histories_on_book_id"
    t.index ["student_id"], name: "index_book_histories_on_student_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "isbn"
    t.string "title"
    t.string "authors"
    t.string "language"
    t.string "published"
    t.string "edition"
    t.string "associated_library"
    t.string "subject"
    t.text "summary"
    t.boolean "special_collection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_borrowed"
    t.boolean "is_deleted"
    t.boolean "is_requested"
    t.integer "student_id"
    t.integer "requested_by"
    t.integer "library_id"
    t.index ["library_id"], name: "index_books_on_library_id"
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "librarian_signup_requests", force: :cascade do |t|
    t.integer "librarian_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "librarians", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "library"
    t.boolean "librarian"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin"
    t.integer "library_id"
    t.boolean "is_approved"
    t.index ["library_id"], name: "index_librarians_on_library_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name"
    t.string "university"
    t.string "location"
    t.integer "max_day"
    t.integer "overdue_fine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "librarian"
    t.integer "librarian_id"
    t.index ["librarian_id"], name: "index_libraries_on_librarian_id"
  end

  create_table "searches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "isbn"
    t.string "title"
    t.string "authors"
    t.string "subject"
    t.string "published"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_collection_requests", force: :cascade do |t|
    t.integer "student_id"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password"
    t.string "educational_level"
    t.string "university"
    t.integer "max_book"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin"
    t.boolean "requested_by"
    t.boolean "librarian"
    t.float "overdue_fine"
  end

end
