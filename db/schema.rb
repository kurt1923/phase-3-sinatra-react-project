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

ActiveRecord::Schema.define(version: 2023_01_19_004948) do

  create_table "customers", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "phone_number"
    t.integer "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "item_name"
    t.integer "item_cost"
    t.integer "project_id"
    t.string "project_category"
    t.integer "quantity"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_name"
    t.string "project_description"
    t.string "labor_cost"
    t.integer "customer_id"
  end

end
