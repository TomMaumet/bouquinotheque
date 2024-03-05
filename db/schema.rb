# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_05_160252) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_stores", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.string "author"
    t.string "genre"
    t.string "publisher"
    t.float "ratings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "publishing_year"
    t.string "EAN"
    t.string "book_type"
    t.string "image_url"
  end

  create_table "playlist_items", force: :cascade do |t|
    t.bigint "playlist_id", null: false
    t.bigint "reading_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["playlist_id"], name: "index_playlist_items_on_playlist_id"
    t.index ["reading_id"], name: "index_playlist_items_on_reading_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_playlists_on_user_id"
  end

  create_table "readings", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "user_id", null: false
    t.text "comment"
    t.integer "my_rating"
    t.string "reading_status", default: "unread"
    t.string "shared_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_readings_on_book_id"
    t.index ["user_id"], name: "index_readings_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "book_id", null: false
    t.index ["book_id"], name: "index_reviews_on_book_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "suggestions", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "user_id", null: false
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_suggestions_on_book_id"
    t.index ["user_id"], name: "index_suggestions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.string "avatar"
    t.integer "age"
    t.string "city"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "playlist_items", "playlists"
  add_foreign_key "playlist_items", "readings"
  add_foreign_key "playlists", "users"
  add_foreign_key "readings", "books"
  add_foreign_key "readings", "users"
  add_foreign_key "reviews", "books"
  add_foreign_key "reviews", "users"
  add_foreign_key "suggestions", "books"
  add_foreign_key "suggestions", "users"
end
