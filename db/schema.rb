# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_10_075408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "handymen", force: :cascade do |t|
    t.string "job_title"
    t.float "average_price"
    t.boolean "availability"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_handymen_on_user_id"
  end

  create_table "missions", force: :cascade do |t|
    t.bigint "handyman_id", null: false
    t.date "date"
    t.bigint "user_id", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["handyman_id"], name: "index_missions_on_handyman_id"
    t.index ["user_id"], name: "index_missions_on_user_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.bigint "handyman_id"
    t.string "handyman_description"
    t.float "specifi_price"
    t.bigint "mission_id", null: false
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["handyman_id"], name: "index_quotations_on_handyman_id"
    t.index ["mission_id"], name: "index_quotations_on_mission_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "missions", "handymen"
  add_foreign_key "missions", "users"
  add_foreign_key "quotations", "handymen"
  add_foreign_key "quotations", "missions"
end