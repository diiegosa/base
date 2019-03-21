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

ActiveRecord::Schema.define(version: 20170725000420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_modules", force: :cascade do |t|
    t.string "module"
    t.string "controller"
    t.json "actions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", id: false, force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "app_module_id"
    t.json "actions"
    t.index ["app_module_id"], name: "index_permissions_on_app_module_id"
    t.index ["profile_id", "app_module_id"], name: "index_permissions_on_profile_id_and_app_module_id", unique: true
    t.index ["profile_id"], name: "index_permissions_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["profile_id"], name: "index_users_on_profile_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "permissions", "app_modules"
  add_foreign_key "permissions", "profiles"
  add_foreign_key "users", "profiles"
end
