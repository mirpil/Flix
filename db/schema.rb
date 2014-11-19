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

ActiveRecord::Schema.define(version: 20141119164349) do

  create_table "cast_members", force: true do |t|
    t.string   "name"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cast_members", ["movie_id"], name: "index_cast_members_on_movie_id"

  create_table "genres", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "placement"
    t.string   "mpaa_rating"
    t.integer  "runtime"
    t.string   "poster_image"
    t.boolean  "has_subtitles"
    t.decimal  "ticket_price",  precision: 8, scale: 2
    t.date     "release_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "director"
    t.string   "producer"
    t.string   "studio"
    t.integer  "genre_id"
  end

  add_index "movies", ["genre_id"], name: "index_movies_on_genre_id"

end
