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

ActiveRecord::Schema.define(version: 20161011073821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tokimons", force: :cascade do |t|
    t.string   "tokimon_name"
    t.integer  "tokimon_weight"
    t.integer  "tokimon_height"
    t.integer  "fly"
    t.integer  "fight"
    t.integer  "fire"
    t.integer  "water"
    t.integer  "electric"
    t.integer  "ice"
    t.integer  "total"
    t.integer  "trainer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string   "trainer_name"
    t.integer  "trainer_weight"
    t.integer  "trainer_height"
    t.integer  "level"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
