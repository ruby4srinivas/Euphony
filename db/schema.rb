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

ActiveRecord::Schema.define(version: 20141017171004) do

  create_table "album_artists", force: true do |t|
    t.integer  "artist_id"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "albums", force: true do |t|
    t.string   "album_name",    limit: 100, null: false
    t.integer  "year"
    t.string   "image"
    t.string   "genre_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums", ["album_name"], name: "index_albums_on_album_name", using: :btree

  create_table "artist_songs", force: true do |t|
    t.integer  "artist_id"
    t.integer  "song_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists", force: true do |t|
    t.string   "artist_name", limit: 100, null: false
    t.string   "image"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artists", ["artist_name"], name: "index_artists_on_artist_name", unique: true, using: :btree

  create_table "categories", force: true do |t|
    t.string   "category_name", limit: 40, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["category_name"], name: "index_categories_on_category_name", unique: true, using: :btree

  create_table "genre_languages", force: true do |t|
    t.string   "genre_language_name", limit: 40, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "genre_languages", ["genre_language_name"], name: "index_genre_languages_on_genre_language_name", unique: true, using: :btree

  create_table "genre_types", force: true do |t|
    t.string   "genre_type_name",   limit: 100, null: false
    t.integer  "genre_language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "genre_types", ["genre_type_name"], name: "index_genre_types_on_genre_type_name", using: :btree

  create_table "songs", primary_key: "song_id", force: true do |t|
    t.string   "song_name",  limit: 100, null: false
    t.string   "track",                  null: false
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
