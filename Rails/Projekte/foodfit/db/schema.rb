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

ActiveRecord::Schema.define(version: 20170425063120) do

  create_table "bodies", force: :cascade do |t|
    t.datetime "datum"
    t.float    "weigth"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calculators", force: :cascade do |t|
    t.integer  "Body_id"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Body_id"], name: "index_calculators_on_Body_id"
    t.index ["User_id"], name: "index_calculators_on_User_id"
  end

  create_table "chats", force: :cascade do |t|
    t.text     "text"
    t.string   "name"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_chats_on_User_id"
  end

  create_table "fooddiaries", force: :cascade do |t|
    t.integer  "anzahl"
    t.string   "name"
    t.date     "datum"
    t.float    "eiweiß"
    t.float    "fett"
    t.float    "kohlenhydrate"
    t.integer  "kalorien"
    t.integer  "user_id"
    t.integer  "food_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["food_id"], name: "index_fooddiaries_on_food_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.integer  "menge"
    t.string   "einheit"
    t.float    "eiweiß"
    t.float    "fett"
    t.float    "kohlenhydrate"
    t.integer  "kalorien"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "calculator_id"
    t.integer  "food_id"
    t.integer  "fooddiary_id"
    t.integer  "sport_id"
    t.integer  "sportdiary_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["calculator_id"], name: "index_profiles_on_calculator_id"
    t.index ["food_id"], name: "index_profiles_on_food_id"
    t.index ["fooddiary_id"], name: "index_profiles_on_fooddiary_id"
    t.index ["sport_id"], name: "index_profiles_on_sport_id"
    t.index ["sportdiary_id"], name: "index_profiles_on_sportdiary_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "sportdiaries", force: :cascade do |t|
    t.string   "name"
    t.date     "datum"
    t.integer  "anzahl"
    t.integer  "kalorien"
    t.integer  "user_id"
    t.integer  "sport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_sportdiaries_on_sport_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string   "name"
    t.integer  "menge"
    t.string   "einheit"
    t.integer  "kalorien"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "gender"
    t.string   "password_digest"
    t.integer  "age"
    t.integer  "start_weight"
    t.integer  "dream_weight"
    t.integer  "height"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
