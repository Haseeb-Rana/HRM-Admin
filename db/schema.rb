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

ActiveRecord::Schema.define(version: 20180422164524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "applicants", id: :serial, force: :cascade do |t|
    t.bigint "created_at"
    t.bigint "updated_at"
    t.text "first_name"
    t.text "last_name"
    t.text "gender"
    t.text "email"
    t.text "password"
    t.text "time_zone"
    t.boolean "is_active"
    t.text "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.text "confirmation_token"
    t.integer "experience_id"
    t.integer "education_id"
    t.index ["email"], name: "applicants_email_key", unique: true
  end

  create_table "archive", id: :serial, force: :cascade do |t|
    t.bigint "createdAt"
    t.text "fromModel"
    t.json "originalRecord"
    t.json "originalRecordId"
  end

  create_table "companies", id: :serial, force: :cascade do |t|
    t.bigint "created_at"
    t.bigint "updated_at"
    t.text "name"
    t.text "logo"
    t.boolean "is_active"
    t.integer "owner"
  end

  create_table "contact", id: :serial, force: :cascade do |t|
    t.bigint "created_at"
    t.bigint "updated_at"
    t.integer "group"
  end

  create_table "contact_contacts_contact__group_contacts", id: :serial, force: :cascade do |t|
    t.integer "group_contacts"
    t.integer "contact_contacts_contact"
  end

  create_table "educations", id: :serial, force: :cascade do |t|
    t.bigint "created_at"
    t.bigint "updated_at"
    t.text "degree_level"
    t.text "degree_type"
    t.text "degree_title"
    t.text "major_subjects"
    t.text "location"
    t.text "institution"
    t.text "completion_year"
    t.text "result_type"
    t.text "applicant_id"
  end

  create_table "experiences", id: :serial, force: :cascade do |t|
    t.bigint "created_at"
    t.bigint "updated_at"
    t.text "job_title"
    t.text "company"
    t.text "location"
    t.date "time_period"
    t.text "description"
    t.text "experience"
    t.text "applicant_id"
  end

  create_table "group", id: :serial, force: :cascade do |t|
    t.bigint "created_at"
    t.bigint "updated_at"
  end

  create_table "jobs", id: :serial, force: :cascade do |t|
    t.bigint "created_at"
    t.bigint "updated_at"
    t.text "title"
    t.integer "created_by_id"
    t.integer "company_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.bigint "created_at"
    t.bigint "updated_at"
    t.text "first_name"
    t.text "last_name"
    t.text "gender"
    t.text "email"
    t.text "password"
    t.float "created_by_id"
    t.text "image"
    t.text "time_zone"
    t.boolean "is_active"
    t.text "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.text "confirmation_token"
    t.integer "company_id"
    t.index ["email"], name: "users_email_key", unique: true
  end

end
