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

ActiveRecord::Schema.define(version: 20170120081748) do

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
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
