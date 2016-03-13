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

ActiveRecord::Schema.define(version: 20160229055217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autos", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "gosnomer"
    t.string   "tech_passport"
    t.string   "marka_model"
    t.datetime "date_release"
    t.string   "color"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "autos", ["client_id"], name: "index_autos_on_client_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "fio"
    t.string   "passport"
    t.string   "licence"
    t.datetime "drive_date_begin"
    t.datetime "birthday"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "insurance_type_id"
    t.integer  "insurer_id"
    t.integer  "auto_id"
    t.datetime "date_begin"
    t.datetime "date_end"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "contracts", ["auto_id"], name: "index_contracts_on_auto_id", using: :btree
  add_index "contracts", ["client_id"], name: "index_contracts_on_client_id", using: :btree
  add_index "contracts", ["insurance_type_id"], name: "index_contracts_on_insurance_type_id", using: :btree
  add_index "contracts", ["insurer_id"], name: "index_contracts_on_insurer_id", using: :btree

  create_table "insurance_types", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurers", force: :cascade do |t|
    t.string   "fio"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contracts", "autos"
  add_foreign_key "contracts", "clients"
  add_foreign_key "contracts", "insurance_types"
  add_foreign_key "contracts", "insurers"
end
