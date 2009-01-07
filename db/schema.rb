# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090107052358) do

  create_table "passports", :force => true do |t|
    t.integer  "user_id"
    t.string   "no"
    t.string   "sex"
    t.string   "origin"
    t.string   "resident"
    t.date     "birthday"
    t.date     "issued_at"
    t.string   "expired_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "a",          :default => false
    t.boolean  "b",          :default => false
    t.boolean  "c",          :default => false
    t.boolean  "d",          :default => false
    t.boolean  "e",          :default => false
    t.boolean  "f",          :default => false
    t.boolean  "g",          :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "first_name_roman"
    t.string   "last_name_roman"
    t.string   "email"
    t.string   "zipcode"
    t.string   "region"
    t.string   "address"
    t.string   "tel"
    t.string   "fax"
    t.string   "mobile"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
