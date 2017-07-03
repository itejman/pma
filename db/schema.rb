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

ActiveRecord::Schema.define(version: 20170703055248) do

  create_table "bans", force: :cascade do |t|
    t.integer  "hooligan_id"
    t.integer  "stadium_id"
    t.integer  "number_of_years"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "clubs", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "start_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "league_id"
    t.integer  "coach_id"
    t.integer  "stadium_id"
    t.integer  "sponsor_id"
    t.integer  "player_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.decimal  "salary"
    t.integer  "club_id"
    t.integer  "menager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employees", ["club_id"], name: "index_employees_on_club_id"

  create_table "hooligans", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "pesel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "host_id"
    t.integer  "guest_id"
    t.integer  "host_goals"
    t.integer  "guest_goals"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "age"
    t.string   "position"
    t.string   "growth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "club_id"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stadia", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
