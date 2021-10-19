# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_19_010554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "air_conditionings", force: :cascade do |t|
    t.string "category"
    t.string "provider"
    t.string "brand"
    t.string "model_intern"
    t.string "model_extern"
    t.string "version"
    t.float "capacity_btu_hour"
    t.float "capacity_kw"
    t.float "power_kw"
    t.float "efficiency_kw_127v"
    t.float "efficiency_kw_220v"
    t.float "consumption_127v"
    t.float "consumption_220v"
    t.string "voltage"
    t.float "consumption_procel_kwh_per_month"
    t.float "consumption_average_brazil_kwh_per_month"
    t.float "hours_consumption_per_month"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
