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

ActiveRecord::Schema.define(version: 2019_09_02_065552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "albums", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.date "began_at"
    t.date "ended_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_albums_on_title"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "discipline_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discipline_id"], name: "index_courses_on_discipline_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_lessons_on_course_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sketches", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.date "date"
    t.integer "height"
    t.integer "width"
    t.string "materials"
    t.bigint "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_sketches_on_album_id"
  end

  create_table "specifications", force: :cascade do |t|
    t.bigint "material_id"
    t.string "specificable_type"
    t.bigint "specificable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_specifications_on_material_id"
    t.index ["specificable_type", "specificable_id"], name: "index_specifications_on_specificable_type_and_specificable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "watercolors", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "height"
    t.integer "width"
    t.bigint "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year", default: 2019, null: false
    t.index ["genre_id"], name: "index_watercolors_on_genre_id"
    t.index ["title"], name: "index_watercolors_on_title"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "courses", "disciplines"
  add_foreign_key "lessons", "courses"
  add_foreign_key "sketches", "albums"
  add_foreign_key "specifications", "materials"
  add_foreign_key "watercolors", "genres"
end
