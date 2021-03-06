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

ActiveRecord::Schema.define(version: 20170613183658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_teams", force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_teams_on_event_id"
    t.index ["team_id"], name: "index_event_teams_on_team_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "organizer"
    t.date "date"
    t.string "venue"
    t.integer "min_age"
    t.string "stream"
    t.string "tickets"
    t.string "size"
    t.boolean "stadium"
    t.boolean "vip_tickets"
    t.boolean "food_drinks"
    t.boolean "merch_sold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "country"
    t.bigint "user_id"
    t.string "slug"
    t.date "date_end"
    t.float "latitude"
    t.float "longitude"
    t.string "image"
    t.string "event_type"
    t.string "prize"
    t.string "ticket_price"
    t.boolean "alcohol"
    t.string "organizer_twitter"
    t.index ["slug"], name: "index_events_on_slug", unique: true
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.string "favorited_type"
    t.bigint "favorited_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["favorited_type", "favorited_id"], name: "index_favorites_on_favorited_type_and_favorited_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "twitter"
    t.string "instagram"
    t.string "photo"
    t.string "role"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gamer_tag"
    t.string "slug"
    t.index ["slug"], name: "index_players_on_slug", unique: true
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "founded_in"
    t.string "logo"
    t.string "twitter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_teams_on_slug", unique: true
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
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "country"
    t.boolean "admin", default: false
    t.string "slug"
    t.string "twitter"
    t.string "instagram"
    t.string "cover_photo"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
  end

  add_foreign_key "event_teams", "events"
  add_foreign_key "event_teams", "teams"
  add_foreign_key "events", "users"
  add_foreign_key "favorites", "users"
end
