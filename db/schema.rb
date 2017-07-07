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

ActiveRecord::Schema.define(version: 20170707115056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ad_bookings", force: :cascade do |t|
    t.bigint "campaign_id"
    t.bigint "ad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_bookings_on_ad_id"
    t.index ["campaign_id"], name: "index_ad_bookings_on_campaign_id"
  end

  create_table "ads", force: :cascade do |t|
    t.bigint "publisher_id"
    t.string "ad_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publisher_id"], name: "index_ads_on_publisher_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.integer "budget"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "pannels", force: :cascade do |t|
    t.bigint "ad_id"
    t.bigint "target_id"
    t.integer "price"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_pannels_on_ad_id"
    t.index ["target_id"], name: "index_pannels_on_target_id"
  end

  create_table "prints", force: :cascade do |t|
    t.bigint "ad_id"
    t.bigint "target_id"
    t.integer "price"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_prints_on_ad_id"
    t.index ["target_id"], name: "index_prints_on_target_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "radios", force: :cascade do |t|
    t.bigint "ad_id"
    t.bigint "target_id"
    t.integer "price"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_radios_on_ad_id"
    t.index ["target_id"], name: "index_radios_on_target_id"
  end

  create_table "targets", force: :cascade do |t|
    t.string "sexe"
    t.string "age"
    t.string "geo"
    t.string "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "televisions", force: :cascade do |t|
    t.bigint "ad_id"
    t.bigint "target_id"
    t.integer "price"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_televisions_on_ad_id"
    t.index ["target_id"], name: "index_televisions_on_target_id"
  end

  create_table "transports", force: :cascade do |t|
    t.bigint "ad_id"
    t.bigint "target_id"
    t.integer "price"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_transports_on_ad_id"
    t.index ["target_id"], name: "index_transports_on_target_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ad_bookings", "ads"
  add_foreign_key "ad_bookings", "campaigns"
  add_foreign_key "ads", "publishers"
  add_foreign_key "campaigns", "users"
  add_foreign_key "pannels", "ads"
  add_foreign_key "pannels", "targets"
  add_foreign_key "prints", "ads"
  add_foreign_key "prints", "targets"
  add_foreign_key "radios", "ads"
  add_foreign_key "radios", "targets"
  add_foreign_key "televisions", "ads"
  add_foreign_key "televisions", "targets"
  add_foreign_key "transports", "ads"
  add_foreign_key "transports", "targets"
end
