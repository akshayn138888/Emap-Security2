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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161106154520) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161106070237) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161106154520) do
=======
ActiveRecord::Schema.define(version: 20161106142357) do
>>>>>>> 4c5b237444b20f30cdc46829b27717bcb0f35acb
>>>>>>> 519f446e6b2a2cc9a5edd924a575d423015177f2
>>>>>>> 162307a53d8c678f037e23b2734d596e80f420ed

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
<<<<<<< HEAD
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
=======
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> 519f446e6b2a2cc9a5edd924a575d423015177f2
  end

  create_table "contact_us", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guards", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sign_upp_security_guards", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sign_upp_supervisors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sign_upps", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "singers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supervisors", force: :cascade do |t|
<<<<<<< HEAD
=======
<<<<<<< HEAD
    t.string   "name"
    t.string   "age"
<<<<<<< HEAD
=======
=======
>>>>>>> 162307a53d8c678f037e23b2734d596e80f420ed
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "admin_id"
<<<<<<< HEAD
=======
>>>>>>> 4c5b237444b20f30cdc46829b27717bcb0f35acb
>>>>>>> 519f446e6b2a2cc9a5edd924a575d423015177f2
>>>>>>> 162307a53d8c678f037e23b2734d596e80f420ed
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
