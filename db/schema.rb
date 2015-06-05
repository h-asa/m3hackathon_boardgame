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

ActiveRecord::Schema.define(version: 20150605072013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authentications", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.string   "location"
    t.string   "gender"
    t.string   "token"
    t.string   "secret"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authentications", ["user_id"], name: "index_authentications_on_user_id", using: :btree

  create_table "game_msts", force: :cascade do |t|
    t.string   "name_japanese"
    t.string   "name_english"
    t.string   "author"
    t.string   "win_type"
    t.string   "geek_id"
    t.string   "pgdb_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "play_data_details", force: :cascade do |t|
    t.integer  "play_data_main_id"
    t.integer  "user_id"
    t.string   "play_score"
    t.string   "play_winner"
    t.string   "play_comments"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "play_data_mains", force: :cascade do |t|
    t.integer  "game_id"
    t.datetime "play_datetime"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "email"
    t.boolean  "admin_flag",          default: false
    t.string   "last_login_provider"
    t.datetime "last_login_at"
    t.text     "user_agent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
