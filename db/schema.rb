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

ActiveRecord::Schema.define(version: 20150311222717) do

  create_table "businesses", force: true do |t|
    t.string   "name"
    t.text     "about"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "businesses", ["user_id"], name: "index_businesses_on_user_id"

  create_table "clients", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_id"
  end

  add_index "clients", ["business_id"], name: "index_clients_on_business_id"

  create_table "enrollments", id: false, force: true do |t|
    t.integer  "client_id",   null: false
    t.integer  "service_id",  null: false
    t.text     "preferences"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["client_id", "service_id"], name: "index_enrollments_on_client_id_and_service_id"
  add_index "enrollments", ["service_id", "client_id"], name: "index_enrollments_on_service_id_and_client_id"

  create_table "services", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price",       precision: 10, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_id"
  end

  add_index "services", ["business_id"], name: "index_services_on_business_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
