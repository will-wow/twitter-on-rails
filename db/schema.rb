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

ActiveRecord::Schema.define(version: 20161217011949) do

  create_table "tweet_streams", force: :cascade do |t|
    t.string   "handle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["handle"], name: "index_tweet_streams_on_handle"
  end

  create_table "tweets", force: :cascade do |t|
    t.string   "text"
    t.datetime "posted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "tweet_streams_id"
    t.index ["tweet_streams_id"], name: "index_tweets_on_tweet_streams_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.text     "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end