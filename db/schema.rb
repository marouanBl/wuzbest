# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130221152918) do

  create_table "answers", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.integer  "parent_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.integer  "is_in_favor"
    t.integer  "user_id"
    t.integer  "parent_id"
    t.datetime "updated_at",  :null => false
  end

  create_table "comparaisons", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.string   "slug"
    t.integer  "first_product_id"
    t.integer  "second_product_id"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "updated_at",        :null => false
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.string   "adress"
    t.decimal  "hq_lat"
    t.decimal  "hq_long"
    t.string   "web"
    t.text     "long_desc"
    t.date     "founded_at"
    t.date     "closed_at"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "contact_phone"
    t.string   "contact_fax"
    t.string   "contact_email"
    t.integer  "owner_id"
    t.integer  "cover_id"
    t.integer  "user_id"
    t.integer  "country_id"
    t.string   "slug"
    t.string   "stock_ref"
    t.float    "stock_value"
    t.integer  "stock_dir"
    t.integer  "state_id"
    t.integer  "city_id"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "refname"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.datetime "released_at"
    t.text     "long_desc"
    t.integer  "manufacturer_id"
    t.integer  "brag_id"
    t.integer  "original_product_id"
    t.string   "slug"
  end

  create_table "questions", :force => true do |t|
    t.text     "content"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.integer  "user_id"
    t.datetime "updated_at", :null => false
  end

  create_table "shops", :force => true do |t|
    t.integer  "main_shop_id"
    t.string   "web"
    t.string   "contact_phone"
    t.string   "contact_fax"
    t.string   "contact_email"
    t.integer  "user_id"
    t.string   "slug"
    t.integer  "state_id"
    t.integer  "city_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
