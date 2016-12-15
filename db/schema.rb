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

ActiveRecord::Schema.define(version: 20161213141352) do

  create_table "cas_pgtious", force: :cascade do |t|
    t.string   "pgt_iou",    limit: 255, null: false
    t.string   "pgt_id",     limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cas_pgtious", ["pgt_iou"], name: "index_cas_pgtious_on_pgt_iou", unique: true, using: :btree

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id",     limit: 255,   null: false
    t.text     "data",           limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "service_ticket", limit: 255
  end

  add_index "sessions", ["service_ticket"], name: "index_sessions_on_service_ticket", using: :btree
  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

end
