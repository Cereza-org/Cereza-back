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

ActiveRecord::Schema.define(version: 20181008182832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "positions", force: :cascade do |t|
    t.string   "latitud"
    t.string   "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                       null: false
    t.string   "phone"
    t.string   "password_digest",            null: false
    t.string   "username",                   null: false
    t.string   "email",           limit: 55, null: false
    t.integer  "position_id"
    t.boolean  "is_mobile"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["position_id"], name: "index_users_on_position_id", using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  add_foreign_key "users", "positions"
end
