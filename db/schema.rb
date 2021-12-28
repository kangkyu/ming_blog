# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_28_012224) do

  create_table "articles", force: :cascade do |t|
    t.string "title", limit: 255
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.text "text"
    t.string "title", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "article_id"
  end

  create_table "names", force: :cascade do |t|
    t.string "email", limit: 255
    t.string "password_digest", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "email", limit: 255
    t.string "user_name", limit: 255
    t.string "password_digest", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
