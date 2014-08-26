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

ActiveRecord::Schema.define(version: 20140821010132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.string   "content"
    t.integer  "story_id"
    t.integer  "poster_id"
    t.datetime "created_at"
    t.datetime "updated_at" 
  end

  add_index "comments", ["poster_id"], name: "index_comments_on_poster_id", using: :btree
  add_index "comments", ["story_id"], name: "index_comments_on_story_id", using: :btree

  create_table "posters", force: true do |t|
    t.string   "image_url"
    t.integer  "user_uid"
    t.string   "blurb"
    t.string   "title1"
    t.string   "title2"
    t.string   "mash_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posters", ["user_uid"], name: "index_posters_on_user_uid", using: :btree

  create_table "stories", force: true do |t|
    t.string   "title1"
    t.string   "title2"
    t.string   "mash_title"
    t.text     "content"
    t.integer  "user_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stories", ["user_uid"], name: "index_stories_on_user_uid", using: :btree

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.json     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
