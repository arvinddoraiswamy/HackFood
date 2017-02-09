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

ActiveRecord::Schema.define(version: 20170209015647) do

  create_table "allfoods", force: :cascade do |t|
    t.string   "item"
    t.string   "foodgroup"
    t.string   "vitamin"
    t.string   "mineral"
    t.string   "otherelements"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "reasontoavoid"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "lactovegan"
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "fruit1"
    t.string   "fruit2"
    t.string   "fruit3"
    t.string   "fruit4"
    t.string   "fruit5"
    t.string   "veggie1"
    t.string   "veggie2"
    t.string   "veggie3"
    t.string   "veggie4"
    t.string   "protein1"
    t.string   "protein2"
    t.string   "protein3"
    t.string   "carbs1"
    t.string   "carbs2"
    t.string   "junk"
    t.string   "date"
  end

  create_table "users", force: :cascade do |t|
    t.string   "handle"
    t.integer  "dietrepeatcount"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
