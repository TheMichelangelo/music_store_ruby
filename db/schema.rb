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

ActiveRecord::Schema.define(version: 2019_12_09_190005) do

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "genre"
    t.integer "musician_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["musician_id"], name: "index_albums_on_musician_id"
  end

  create_table "musicians", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "age"
    t.string "home_adress"
    t.integer "studio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_musicians_on_studio_id", unique: true
  end

  create_table "studios", force: :cascade do |t|
    t.integer "album_id"
    t.string "name"
    t.string "location"
    t.string "founder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_studios_on_album_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
