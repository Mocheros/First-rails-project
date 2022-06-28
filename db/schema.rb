# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_16_215743) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "bramkis", force: :cascade do |t|
    t.integer "id_meczu"
    t.integer "id_strzelca"
    t.integer "id_asystenta"
    t.integer "minuta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "id_zespolu"
  end

  create_table "homes", force: :cascade do |t|
    t.string "tytul"
    t.text "opis"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "czydodano"
  end

  create_table "kartkacs", force: :cascade do |t|
    t.integer "id_meczu"
    t.integer "id_zespolu"
    t.integer "id_zawodnika"
    t.integer "minuta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kartkazs", force: :cascade do |t|
    t.integer "id_meczu"
    t.integer "id_zespolu"
    t.integer "id_zawodnika"
    t.integer "minuta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kolejkas", force: :cascade do |t|
    t.date "data_rozpoczecia"
    t.date "data_zakonczenia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "nr"
    t.integer "id_kolejki"
  end

  create_table "meczs", force: :cascade do |t|
    t.integer "id_pierwszego"
    t.integer "id_drugiego"
    t.integer "gole_pierwszego"
    t.integer "gole_drugiego"
    t.date "termin"
    t.integer "nr_kolejki"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "czywynik"
    t.time "godzina"
    t.string "czas"
    t.datetime "czas2"
  end

  create_table "sklads", force: :cascade do |t|
    t.integer "id_meczu"
    t.integer "id_zespolu"
    t.integer "id_zawodnika"
    t.string "pozycja"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "zawodnik2naz"
    t.string "zawodnik3naz"
    t.string "zawodnik4naz"
    t.string "zawodnik5naz"
    t.string "zawodnik6naz"
    t.string "zawodnik7naz"
    t.string "zawodnik8naz"
    t.string "zawodnik9naz"
    t.string "zawodnik10naz"
    t.string "zawodnik11naz"
    t.integer "czysklad1"
    t.integer "czysklad2"
  end

  create_table "statystykis", force: :cascade do |t|
    t.integer "id_meczu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "id_zespolu"
    t.integer "bramki_strzelone"
    t.integer "asysty"
    t.integer "zolte_kartki"
    t.integer "czerwone_kartki"
    t.integer "id_zawodnika"
  end

  create_table "strzelecs", force: :cascade do |t|
    t.integer "id_zawodnika"
    t.string "imie"
    t.string "nazwisko"
    t.integer "liczba_goli"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tabelas", force: :cascade do |t|
    t.integer "id_zespolu"
    t.integer "punkty"
    t.integer "zwyciestwa"
    t.integer "porazki"
    t.integer "remisy"
    t.integer "gole_strzelone"
    t.integer "gole_stracone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "zawodniks", force: :cascade do |t|
    t.string "imie"
    t.string "nazwisko"
    t.integer "id_zespolu"
    t.string "narodowosc"
    t.date "rok_urodzenia"
    t.integer "numer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gole"
    t.integer "asysty"
    t.integer "zolte_kartki"
    t.integer "czerwone_kartki"
    t.integer "rozegrane_mecze"
    t.string "pozycja"
  end

  create_table "zespols", force: :cascade do |t|
    t.string "nazwa"
    t.string "stadion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "mecze_zespolu"
    t.integer "punkty"
    t.integer "zwyciestwa"
    t.integer "remisy"
    t.integer "porazki"
    t.integer "gole_strzelone"
    t.integer "gole_stracone"
  end

end
