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

ActiveRecord::Schema.define(version: 20160719073043) do

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.integer  "quantity"
    t.string   "author"
    t.string   "publisher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "borrower_id"
    t.integer  "borrowed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["borrowed_id"], name: "index_relationships_on_borrowed_id"
    t.index ["borrower_id", "borrowed_id"], name: "index_relationships_on_borrower_id_and_borrowed_id", unique: true
    t.index ["borrower_id"], name: "index_relationships_on_borrower_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean  "admin",             default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
