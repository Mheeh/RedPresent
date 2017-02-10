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

ActiveRecord::Schema.define(version: 20170210020750) do

  create_table "balances", force: :cascade do |t|
    t.float    "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "debt_to_id"
    t.index ["debt_to_id"], name: "index_balances_on_debt_to_id"
    t.index ["user_id"], name: "index_balances_on_user_id"
  end

  create_table "collaborations", force: :cascade do |t|
    t.float    "part"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "is_buyer",   default: false
    t.integer  "user_id"
    t.integer  "present_id"
    t.index ["present_id"], name: "index_collaborations_on_present_id"
    t.index ["user_id", "is_buyer"], name: "index_collaborations_on_user_id_and_is_buyer"
    t.index ["user_id"], name: "index_collaborations_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "amount"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "payment_to_id"
    t.index ["payment_to_id"], name: "index_payments_on_payment_to_id"
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "presents", force: :cascade do |t|
    t.string   "description"
    t.float    "price"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "name"
    t.boolean  "locked",      default: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
