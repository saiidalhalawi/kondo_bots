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

ActiveRecord::Schema.define(version: 20160321042711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: true do |t|
    t.integer  "statements_count", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "request_idioms", force: true do |t|
    t.integer  "morph_type",       limit: 2
    t.string   "word"
    t.integer  "occurences"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "response_idioms", force: true do |t|
    t.integer  "morph_type",       limit: 2
    t.string   "word"
    t.integer  "occurences"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "speakers", force: true do |t|
    t.integer  "speaker_type",       limit: 2
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statements", force: true do |t|
    t.integer  "conversation_id"
    t.integer  "speaker_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
