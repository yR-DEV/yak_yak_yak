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

ActiveRecord::Schema.define(version: 2019_04_17_214102) do

  create_table "bios", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.datetime "last_contact"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string "school"
    t.string "degree"
    t.integer "grad_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_histories", force: :cascade do |t|
    t.string "company"
    t.string "position"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_trackers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sent_app_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sent_app_id"], name: "index_job_trackers_on_sent_app_id"
    t.index ["user_id"], name: "index_job_trackers_on_user_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.integer "skill_id"
    t.integer "user_id"
    t.integer "bio_id"
    t.integer "education_id"
    t.integer "job_history_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bio_id"], name: "index_resumes_on_bio_id"
    t.index ["education_id"], name: "index_resumes_on_education_id"
    t.index ["job_history_id"], name: "index_resumes_on_job_history_id"
    t.index ["skill_id"], name: "index_resumes_on_skill_id"
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "linkedin_url"
    t.string "github_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
