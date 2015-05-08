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

ActiveRecord::Schema.define(version: 20150406153826) do

  create_table "images", force: :cascade do |t|
    t.string   "url"
    t.integer  "publication_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "images", ["publication_id"], name: "index_images_on_publication_id"
  add_index "images", ["user_id"], name: "index_images_on_user_id"

  create_table "publications", force: :cascade do |t|
    t.string   "title"
    t.string   "type_add"
    t.string   "type_property"
    t.integer  "size"
    t.integer  "price"
    t.string   "rooms"
    t.string   "bathrooms"
    t.string   "old"
    t.string   "floors"
    t.string   "floor_loc"
    t.integer  "garage"
    t.integer  "closets"
    t.text     "description"
    t.string   "date"
    t.string   "status"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "mascot"
    t.integer  "furnished"
    t.integer  "kitchen"
    t.integer  "internet"
  end

  add_index "publications", ["user_id"], name: "index_publications_on_user_id"

  create_table "ubications", force: :cascade do |t|
    t.string   "country"
    t.string   "city"
    t.string   "town"
    t.string   "street"
    t.integer  "number_out"
    t.integer  "number_in"
    t.string   "colony"
    t.integer  "postal"
    t.integer  "publication_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "ubications", ["publication_id"], name: "index_ubications_on_publication_id"
  add_index "ubications", ["user_id"], name: "index_ubications_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.string   "avatar"
    t.string   "phone"
    t.string   "celphone"
    t.string   "address"
    t.string   "city"
    t.string   "estate"
    t.integer  "postal"
    t.string   "web"
    t.string   "date"
    t.string   "role"
    t.integer  "updated",                default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
