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

ActiveRecord::Schema[7.0].define(version: 2023_02_28_142330) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_items", force: :cascade do |t|
    t.bigint "devil_fruit_id"
    t.bigint "shopping_cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["devil_fruit_id"], name: "index_cart_items_on_devil_fruit_id"
    t.index ["shopping_cart_id"], name: "index_cart_items_on_shopping_cart_id"
  end

  create_table "devil_fruits", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.integer "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_devil_fruits_on_user_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.boolean "is_full?", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cart_items", "devil_fruits"
  add_foreign_key "cart_items", "shopping_carts"
  add_foreign_key "devil_fruits", "users"
end
