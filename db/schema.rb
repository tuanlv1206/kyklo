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

ActiveRecord::Schema.define(version: 20161114133942) do

  create_table "model_types", force: :cascade do |t|
    t.string   "name"
    t.string   "model_type_slug"
    t.string   "model_type_code"
    t.integer  "base_price"
    t.integer  "model_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["model_id"], name: "index_model_types_on_model_id"
    t.index ["model_type_slug"], name: "index_model_types_on_model_type_slug"
  end

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.string   "model_slug"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["model_slug"], name: "index_models_on_model_slug", unique: true
    t.index ["organization_id"], name: "index_models_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "public_name"
    t.string   "type"
    t.string   "pricing_policy"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end