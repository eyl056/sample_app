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

ActiveRecord::Schema.define(version: 2021_07_09_065301) do

  create_table "contact_details", force: :cascade do |t|
    t.integer "contact_id"
    t.string "contact_detail_info"
    t.string "contact_detail_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "contact_id"
    t.string "contact_name"
    t.string "contact_title"
    t.string "contact_detail_type"
    t.string "contact_company"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lead_activities", force: :cascade do |t|
    t.integer "lead_activity_id"
    t.integer "activity_type_id"
    t.integer "created_by"
    t.text "lead_notes_content"
    t.integer "lead_email_group_id"
    t.integer "lead_email_order"
    t.integer "lead_email_thread_number"
    t.string "lead_email_from"
    t.string "lead_email_to"
    t.string "lead_email_title"
    t.text "lead_email_content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "lead_id"
  end

  create_table "lead_statuses", force: :cascade do |t|
    t.integer "lead_status_id"
    t.string "lead_status_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organization_id", null: false
    t.index ["organization_id"], name: "index_lead_statuses_on_organization_id"
  end

  create_table "leads", force: :cascade do |t|
    t.integer "lead_id"
    t.string "lead_company_name"
    t.string "lead_contact_name"
    t.integer "assigned_by"
    t.integer "created_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "lead_status_id"
  end

  create_table "opportunities", force: :cascade do |t|
    t.integer "opportunity_id"
    t.string "date"
    t.date "estimated_close"
    t.float "confidence"
    t.decimal "value"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "opportunity_statuses", force: :cascade do |t|
    t.integer "opportunity_status_id"
    t.string "oppotunity_status_name"
    t.string "process"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "organization_id"
    t.string "integer"
    t.string "organization_name"
    t.string "string"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organization_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["organization_id"], name: "index_users_on_organization_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "lead_statuses", "organizations"
  add_foreign_key "users", "organizations"
end
