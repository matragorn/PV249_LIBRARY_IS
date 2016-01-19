# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160119195722) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "author_id"
    t.integer  "office_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "books", ["author_id"], name: "index_books_on_author_id"
  add_index "books", ["office_id"], name: "index_books_on_office_id"

  create_table "books_tags", id: false, force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "tag_id",  null: false
  end

  create_table "borrowings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.date     "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "borrowings", ["book_id"], name: "index_borrowings_on_book_id"
  add_index "borrowings", ["user_id"], name: "index_borrowings_on_user_id"

  create_table "offices", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "book_id"
  end

  add_index "posts", ["book_id"], name: "index_posts_on_book_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
