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

ActiveRecord::Schema.define(version: 20160401054138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accommodations", force: :cascade do |t|
    t.string   "bedding"
    t.string   "privacy"
    t.integer  "guest_capacity"
    t.string   "pet"
    t.integer  "num_roommates"
    t.integer  "volunteer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "position"
    t.boolean  "board_member"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "business_hours", force: :cascade do |t|
    t.time     "open_time"
    t.time     "close_time"
    t.integer  "day_of_week"
    t.integer  "clinic_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "make"
    t.string   "model"
    t.string   "color"
    t.string   "license_plate_number"
    t.integer  "volunteer_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string   "title"
    t.string   "transit_accessible"
    t.string   "abortion_types"
    t.string   "site_url"
    t.string   "map_url"
    t.integer  "address_id"
    t.integer  "business_hours_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "role"
    t.integer  "address_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "gender"
    t.string   "type"
    t.boolean  "on_call"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
