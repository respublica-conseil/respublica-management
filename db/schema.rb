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

ActiveRecord::Schema[7.0].define(version: 2023_03_29_164440) do
  create_table "charges", force: :cascade do |t|
    t.string "mission_reference", null: false
    t.string "consultant_full_name", null: false
    t.integer "march_charge", default: 0
    t.integer "april_charge", default: 0
    t.integer "may_charge", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "num_missions_ref", default: 0
    t.string "full_name"
    t.integer "missions_count"
  end

  create_table "consultants_missions", id: false, force: :cascade do |t|
    t.integer "mission_id", null: false
    t.integer "consultant_id", null: false
    t.index ["consultant_id", "mission_id"], name: "index_consultants_missions_on_consultant_id_and_mission_id"
    t.index ["mission_id", "consultant_id"], name: "index_consultants_missions_on_mission_id_and_consultant_id"
  end

  create_table "missions", force: :cascade do |t|
    t.string "mission_reference"
    t.string "consultant_reference"
    t.string "mission_status"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "Janvier"
    t.text "Fevrier"
    t.text "Mars"
    t.text "Avril"
    t.text "Mai"
    t.text "Juin"
    t.text "Juillet"
    t.text "Août"
    t.text "Septembre"
    t.text "Octobre"
    t.text "Novembre"
    t.text "Decembre"
    t.string "mission_type"
    t.string "consultants"
    t.string "nom"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
