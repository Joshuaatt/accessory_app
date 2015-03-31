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

ActiveRecord::Schema.define(version: 20150331012736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subaru_accessories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.integer  "parts_cost"
    t.integer  "labor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subaru_model_id"
  end

  add_index "subaru_accessories", ["subaru_model_id"], name: "index_subaru_accessories_on_subaru_model_id", using: :btree

  create_table "subaru_models", force: :cascade do |t|
    t.string   "name"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subaru_id"
  end

  add_index "subaru_models", ["subaru_id"], name: "index_subaru_models_on_subaru_id", using: :btree

  create_table "subarus", force: :cascade do |t|
    t.string   "make"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "toyota_accessories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.integer  "parts_cost"
    t.integer  "labor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "toyota_model_id"
  end

  add_index "toyota_accessories", ["toyota_model_id"], name: "index_toyota_accessories_on_toyota_model_id", using: :btree

  create_table "toyota_models", force: :cascade do |t|
    t.string   "name"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "toyota_id"
  end

  add_index "toyota_models", ["toyota_id"], name: "index_toyota_models_on_toyota_id", using: :btree

  create_table "toyotas", force: :cascade do |t|
    t.string   "make"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "subaru_accessories", "subaru_models"
  add_foreign_key "subaru_models", "subarus"
  add_foreign_key "toyota_accessories", "toyota_models"
  add_foreign_key "toyota_models", "toyotas"
end
