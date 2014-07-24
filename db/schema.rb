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

ActiveRecord::Schema.define(version: 20140724201445) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["name", "resource_type", "resource_id"], name: "index_admins_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "admins", ["name"], name: "index_admins_on_name", using: :btree

  create_table "changes", force: true do |t|
    t.datetime "date"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "checklists", id: false, force: true do |t|
    t.integer  "guest_id"
    t.integer  "list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "division_id"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "internal"
    t.integer  "price_id"
    t.date     "launch_date"
    t.text     "notes"
    t.date     "billing_start_date"
    t.boolean  "consolidated"
    t.string   "finance_contact_name"
    t.string   "finance_contact_email"
    t.string   "finance_contact_phone"
    t.string   "venue_contact_name"
    t.string   "venue_contact_email"
    t.string   "venue_contact_phone"
    t.string   "ticketing_provider"
    t.datetime "kickoff_date"
  end

  create_table "clients_prices", force: true do |t|
    t.integer "client_id"
    t.integer "price_id"
  end

  create_table "divisions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "venue_id"
    t.integer  "performer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guestlists", id: false, force: true do |t|
    t.integer  "guest_id"
    t.integer  "list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests", force: true do |t|
    t.string   "list_id"
    t.integer  "type_id"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.integer  "addons"
  end

  create_table "launches", force: true do |t|
    t.boolean  "beta"
    t.datetime "betadate"
    t.datetime "startdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", force: true do |t|
    t.integer  "venue_id"
    t.integer  "event_id"
    t.integer  "performer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "logs", force: true do |t|
    t.integer  "user_id"
    t.string   "modification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "performers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", force: true do |t|
    t.string   "name"
    t.integer  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_admins", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "admin_id"
  end

  add_index "users_admins", ["user_id", "admin_id"], name: "index_users_admins_on_user_id_and_admin_id", using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "venues", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: true do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end
