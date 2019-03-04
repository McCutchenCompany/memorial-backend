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

ActiveRecord::Schema.define(version: 2019_03_01_185240) do

  create_table "charges", primary_key: "uuid", id: :binary, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_id"
    t.float "charge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", primary_key: "uuid", id: :binary, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "percent", precision: 15, scale: 10
    t.boolean "available", default: true
    t.string "user_id"
    t.boolean "one_time_use", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
  end

  create_table "locations", primary_key: "uuid", id: :binary, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "memorial_id"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "memorials", primary_key: "uuid", id: :binary, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.binary "user_id"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "image"
    t.datetime "birth_date"
    t.datetime "death_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.boolean "public_post", default: true
    t.boolean "published", default: false
    t.integer "posY", default: 0
    t.integer "posX", default: 0
    t.integer "scale", default: 100
    t.integer "rot", default: 0
    t.integer "views", default: 0
    t.boolean "public_photo", default: false
  end

  create_table "memories", primary_key: "uuid", id: :binary, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "memorial_id"
    t.string "user_id"
    t.string "title"
    t.text "description"
    t.boolean "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "denied", default: false
  end

  create_table "photos", primary_key: "uuid", id: :binary, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "memorial_id"
    t.string "user_id"
    t.string "asset_link"
    t.string "title"
    t.text "description"
    t.boolean "published"
    t.boolean "denied"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timelines", primary_key: "uuid", id: :binary, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "memorial_id"
    t.datetime "date"
    t.string "date_format"
    t.text "description"
    t.string "asset_link"
    t.string "asset_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "event"
    t.integer "posY", default: 0
    t.integer "posX", default: 0
    t.integer "scale", default: 100
    t.integer "rot", default: 0
  end

  create_table "users", primary_key: "uuid", id: :binary, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "auth0_id"
    t.integer "licenses"
    t.integer "licenses_in_use"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
