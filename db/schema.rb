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

ActiveRecord::Schema.define(version: 20161209203829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dzials", force: :cascade do |t|
    t.text     "nazwa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "klients", force: :cascade do |t|
    t.text     "nazwa"
    t.integer  "nip"
    t.integer  "kod_pocztowy"
    t.text     "poczta"
    t.text     "adres"
    t.integer  "telefon"
    t.text     "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "pracowniks", force: :cascade do |t|
    t.integer  "stanowisko_id"
    t.integer  "dzial_id"
    t.text     "nazwa"
    t.text     "stanowisko"
    t.integer  "telefon"
    t.text     "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.index ["dzial_id"], name: "index_pracowniks_on_dzial_id", using: :btree
    t.index ["stanowisko_id"], name: "index_pracowniks_on_stanowisko_id", using: :btree
  end

  create_table "stanowiskos", force: :cascade do |t|
    t.text     "nazwa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.boolean  "pracownik"
    t.boolean  "ispracownik"
    t.integer  "stanowisko_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "dzial_id"
    t.index ["dzial_id"], name: "index_users_on_dzial_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["stanowisko_id"], name: "index_users_on_stanowisko_id", using: :btree
  end

  create_table "zgloszenie_aktywnoscs", force: :cascade do |t|
    t.integer  "zgloszenie_id"
    t.text     "tresc"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["zgloszenie_id"], name: "index_zgloszenie_aktywnoscs_on_zgloszenie_id", using: :btree
  end

  create_table "zgloszenies", force: :cascade do |t|
    t.integer  "klient_id"
    t.integer  "pracownik_id"
    t.integer  "dzial_id"
    t.integer  "priorytet"
    t.integer  "status"
    t.date     "data_zgloszenia"
    t.date     "data_naprawy"
    t.text     "opis_uszkodzenia"
    t.text     "nazwa_urzadzenia"
    t.integer  "wysylka"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["dzial_id"], name: "index_zgloszenies_on_dzial_id", using: :btree
    t.index ["klient_id"], name: "index_zgloszenies_on_klient_id", using: :btree
    t.index ["pracownik_id"], name: "index_zgloszenies_on_pracownik_id", using: :btree
  end

  add_foreign_key "pracowniks", "dzials"
  add_foreign_key "pracowniks", "stanowiskos"
  add_foreign_key "users", "dzials"
  add_foreign_key "users", "stanowiskos"
  add_foreign_key "zgloszenie_aktywnoscs", "zgloszenies", column: "zgloszenie_id"
  add_foreign_key "zgloszenies", "dzials"
  add_foreign_key "zgloszenies", "klients"
  add_foreign_key "zgloszenies", "pracowniks"
end
