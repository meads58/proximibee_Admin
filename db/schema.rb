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

ActiveRecord::Schema.define(version: 20150415104635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beacons", force: :cascade do |t|
    t.string   "name"
    t.integer  "major"
    t.integer  "minor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "show_id"
  end

  add_index "beacons", ["show_id"], name: "index_beacons_on_show_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "url"
    t.integer  "beacon_id"
    t.string   "owner"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "products", ["beacon_id"], name: "index_products_on_beacon_id", using: :btree

  create_table "shows", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "beacons", "shows"
  add_foreign_key "products", "beacons"
end
