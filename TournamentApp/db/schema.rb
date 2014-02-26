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

ActiveRecord::Schema.define(version: 20140226055429) do

  create_table "assigns", force: true do |t|
    t.integer  "players_id"
    t.integer  "pools_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assigns", ["players_id"], name: "index_assigns_on_players_id"
  add_index "assigns", ["pools_id"], name: "index_assigns_on_pools_id"

  create_table "characters", force: true do |t|
    t.string "game"
    t.string "character"
    t.string "image_url"
  end

  create_table "events", force: true do |t|
    t.string "event"
    t.string "game"
    t.string "image"
  end

  create_table "features", force: true do |t|
    t.integer  "tournaments_id"
    t.integer  "characters_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "features", ["characters_id"], name: "index_features_on_characters_id"
  add_index "features", ["tournaments_id"], name: "index_features_on_tournaments_id"

  create_table "players", force: true do |t|
    t.string "name"
    t.string "gamertag"
    t.string "address"
  end

  create_table "pools", force: true do |t|
    t.string  "game"
    t.string  "gamertag"
    t.integer "ranking"
    t.integer "pool_group"
  end

  create_table "tournaments", force: true do |t|
    t.string "game"
    t.string "rules"
  end

  create_table "tourney_entries", force: true do |t|
    t.integer  "tournaments_id"
    t.integer  "players_id"
    t.integer  "pools_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tourney_entries", ["players_id"], name: "index_tourney_entries_on_players_id"
  add_index "tourney_entries", ["pools_id"], name: "index_tourney_entries_on_pools_id"
  add_index "tourney_entries", ["tournaments_id"], name: "index_tourney_entries_on_tournaments_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
