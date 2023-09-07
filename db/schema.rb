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

ActiveRecord::Schema[7.0].define(version: 2023_09_07_075020) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "biddings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.float "bidding_price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_biddings_on_product_id"
    t.index ["user_id"], name: "index_biddings_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.bigint "seller_id", null: false
    t.bigint "buyer_id"
    t.bigint "category_id", null: false
    t.string "name", null: false
    t.float "starting_price", null: false
    t.text "description", null: false
    t.string "image", null: false
    t.string "status", null: false
    t.string "location", null: false
    t.date "bidding_end_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "current_bid"
    t.float "bid_interval"
    t.index ["buyer_id"], name: "index_products_on_buyer_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["seller_id"], name: "index_products_on_seller_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "phone_number", null: false
    t.string "email", null: false
    t.string "image"
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "watchlists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_watchlists_on_product_id"
    t.index ["user_id"], name: "index_watchlists_on_user_id"
  end

  add_foreign_key "biddings", "products"
  add_foreign_key "biddings", "users"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "users", column: "buyer_id"
  add_foreign_key "products", "users", column: "seller_id"
  add_foreign_key "watchlists", "products"
  add_foreign_key "watchlists", "users"
end
