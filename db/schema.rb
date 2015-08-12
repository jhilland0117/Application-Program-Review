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

ActiveRecord::Schema.define(version: 20131204193637) do

  create_table "apr_reports", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unit_id"
    t.integer  "milestone_id"
    t.integer  "pdf_id"
    t.integer  "section_data_id"
    t.integer  "type_id"
  end

  create_table "apr_reports_users", force: true do |t|
    t.integer "user_id"
    t.integer "apr_report_id"
  end

  create_table "criterions", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "section_id"
    t.string   "criterion_number"
    t.string   "description"
  end

  add_index "criterions", ["criterion_number"], name: "index_criterions_on_criterion_number"
  add_index "criterions", ["description"], name: "index_criterions_on_description"

  create_table "milestones", force: true do |t|
    t.text     "name"
    t.date     "deadline"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "apr_report_id"
  end

  create_table "pdfs", force: true do |t|
    t.text     "url"
    t.text     "temp_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "apr_report_id"
  end

  create_table "section_data", force: true do |t|
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "apr_report_id"
    t.integer  "section_id"
  end

  create_table "sections", force: true do |t|
    t.text     "section_number"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "section_datum_id"
    t.integer  "criterion_id"
  end

  create_table "types", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "apr_report_id"
  end

  create_table "units", force: true do |t|
    t.text     "unit_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "apr_report_id"
  end

  create_table "units_users", force: true do |t|
    t.integer "unit_id"
    t.integer "user_id"
  end

  create_table "user_roles", force: true do |t|
    t.text     "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.text     "username"
    t.text     "first_name"
    t.text     "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_role_id"
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
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
