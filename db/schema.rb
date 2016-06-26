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

ActiveRecord::Schema.define(version: 20160116145725) do

  create_table "transactions", force: :cascade do |t|
    t.datetime "date"
    t.string   "type"
    t.string   "sub_type"
    t.string   "txn_type"
    t.string   "payment_type"
    t.string   "mrs"
    t.string   "category"
    t.string   "bank_name"
    t.string   "account_id"
    t.string   "account_type"
    t.decimal  "credit",          precision: 15, scale: 3
    t.decimal  "debit",           precision: 15, scale: 3
    t.decimal  "balance",         precision: 15, scale: 3
    t.decimal  "outstanding",     precision: 15, scale: 3
    t.decimal  "available_limit", precision: 15, scale: 3
    t.text     "notes"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

end
