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

ActiveRecord::Schema.define(version: 20160628110608) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cheese_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cheese_locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cheese_pates", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cheeses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "cheese_location_id"
    t.integer  "cheese_category_id"
    t.integer  "cheese_pate_id"
  end

  add_index "cheeses", ["cheese_category_id"], name: "index_cheeses_on_cheese_category_id"
  add_index "cheeses", ["cheese_location_id"], name: "index_cheeses_on_cheese_location_id"
  add_index "cheeses", ["cheese_pate_id"], name: "index_cheeses_on_cheese_pate_id"
  add_index "cheeses", ["name"], name: "index_cheeses_on_name", unique: true

  create_table "contenus", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "wine_id"
    t.integer  "cepage_id"
  end

  add_index "contenus", ["cepage_id"], name: "index_contenus_on_cepage_id"
  add_index "contenus", ["wine_id"], name: "index_contenus_on_wine_id"

  create_table "pairings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cheese_id"
    t.integer  "wine_id"
  end

  add_index "pairings", ["cheese_id"], name: "index_pairings_on_cheese_id"
  add_index "pairings", ["wine_id"], name: "index_pairings_on_wine_id"

  create_table "textures", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["login"], name: "index_users_on_login", unique: true

  create_table "wine_cepages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wine_colors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wine_locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.date     "year"
    t.string   "image"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "wine_color_id"
    t.integer  "wine_location_id"
  end

  add_index "wines", ["wine_color_id"], name: "index_wines_on_wine_color_id"
  add_index "wines", ["wine_location_id"], name: "index_wines_on_wine_location_id"

end
