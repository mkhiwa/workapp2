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

ActiveRecord::Schema.define(version: 2021_06_06_191720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.bigint "consultation_id", null: false
    t.string "name"
    t.string "contact"
    t.string "email"
    t.string "location"
    t.string "request_by"
    t.decimal "hourly_rate"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consultation_id"], name: "index_clients_on_consultation_id"
  end

  create_table "consultations", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "full_name"
    t.string "nid"
    t.string "profession"
    t.string "company"
    t.string "mobile_no"
    t.string "location"
    t.index ["email"], name: "index_consultations_on_email", unique: true
    t.index ["reset_password_token"], name: "index_consultations_on_reset_password_token", unique: true
  end

  create_table "employees", force: :cascade do |t|
    t.bigint "consultation_id", null: false
    t.string "full_name"
    t.string "nid"
    t.string "contact"
    t.string "email"
    t.string "location"
    t.decimal "hourly_rate"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consultation_id"], name: "index_employees_on_consultation_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "consultation_id", null: false
    t.bigint "client_id", null: false
    t.bigint "employee_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "work_hours"
    t.decimal "total"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "location"
    t.string "requested_by"
    t.index ["client_id"], name: "index_jobs_on_client_id"
    t.index ["consultation_id"], name: "index_jobs_on_consultation_id"
    t.index ["employee_id"], name: "index_jobs_on_employee_id"
  end

  add_foreign_key "clients", "consultations"
  add_foreign_key "employees", "consultations"
  add_foreign_key "jobs", "clients"
  add_foreign_key "jobs", "consultations"
  add_foreign_key "jobs", "employees"
end
