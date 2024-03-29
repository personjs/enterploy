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

ActiveRecord::Schema.define(version: 20140901131850) do

  create_table "applying_jobs", force: true do |t|
    t.integer  "user_id"
    t.integer  "job_listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "applying_jobs", ["user_id", "job_listing_id"], name: "index_applying_jobs_on_user_id_and_job_listing_id", using: :btree

  create_table "company_profiles", force: true do |t|
    t.string   "company_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_profiles", ["user_id"], name: "index_company_profiles_on_user_id", using: :btree

  create_table "educations", force: true do |t|
    t.string   "school_name"
    t.string   "school_city"
    t.string   "school_state"
    t.string   "degree_type"
    t.string   "degree_status"
    t.string   "area_of_study"
    t.date     "graduation_year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "educations", ["user_id"], name: "index_educations_on_user_id", using: :btree

  create_table "employments", force: true do |t|
    t.string   "job_cateorgy"
    t.string   "name_of_company"
    t.string   "city_of_company"
    t.string   "state_of_company"
    t.string   "contact_name"
    t.string   "contact_number"
    t.string   "job_title"
    t.boolean  "full_part_time"
    t.text     "skills_learned"
    t.text     "reason_for_leaving"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employments", ["user_id"], name: "index_employments_on_user_id", using: :btree

  create_table "job_listings", force: true do |t|
    t.string   "company_name"
    t.string   "company_city"
    t.string   "company_state"
    t.string   "job_type"
    t.string   "job_title"
    t.text     "job_description"
    t.text     "job_responsibilities"
    t.text     "job_benefits"
    t.float    "pay_range"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "job_listings", ["user_id"], name: "index_job_listings_on_user_id", using: :btree

  create_table "profile_pictures", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
    t.integer  "user_id"
  end

  add_index "profile_pictures", ["user_id"], name: "index_profile_pictures_on_user_id", using: :btree

  create_table "the_applications", force: true do |t|
    t.date     "birthday"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "country"
    t.string   "phone_number"
    t.boolean  "eligable_to_work"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "the_applications", ["user_id"], name: "index_the_applications_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_reset_token"
    t.string   "user_kind"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["password_reset_token"], name: "index_users_on_password_reset_token", using: :btree

end
