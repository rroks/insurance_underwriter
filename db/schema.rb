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

ActiveRecord::Schema.define(version: 20170813193200) do

  create_table "driver_histories", force: :cascade do |t|
    t.integer "peroson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_of_incident"
    t.integer "total_value_of_claim"
    t.string "incident_type"
    t.text "description"
    t.index ["peroson_id"], name: "index_driver_histories_on_peroson_id"
  end

  create_table "perosons", force: :cascade do |t|
    t.string "title"
    t.string "forename"
    t.string "surname"
    t.string "email"
    t.date "date_of_birth"
    t.string "telephone_number"
    t.string "street"
    t.string "city"
    t.string "county"
    t.string "postcode"
    t.string "license_type"
    t.integer "license_period"
    t.string "occupation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "peroson_id"
    t.string "vehicle_registration"
    t.integer "estimated_annual_mileage"
    t.decimal "estimated_vehicle_value", precision: 10, scale: 2
    t.string "typical_parking_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "policy_start_date"
    t.index ["peroson_id"], name: "index_vehicles_on_peroson_id"
  end

end
