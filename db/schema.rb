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

ActiveRecord::Schema.define(version: 20150803043640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.string   "company"
    t.string   "package"
    t.string   "test_type"
    t.boolean  "component_scores"
    t.string   "instructor"
    t.integer  "number_of_students"
    t.string   "essay_file"
    t.boolean  "complete"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "essays", force: :cascade do |t|
    t.string   "student_name"
    t.string   "text"
    t.string   "revier_one"
    t.string   "reviewer_two"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "company_name"
    t.integer  "number_of_batches"
    t.integer  "total_amount"
    t.integer  "quantity_of_packages"
    t.string   "file"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string   "name"
    t.text     "internal_comment"
    t.boolean  "allow_score"
    t.boolean  "allow_draft"
    t.boolean  "allow_critique"
    t.boolean  "allow_internal_edits"
    t.string   "turnover"
    t.string   "number_of_editors"
    t.integer  "price"
    t.integer  "add_on_price"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string   "company"
    t.string   "payment_type"
    t.integer  "payment_amount"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "role"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
