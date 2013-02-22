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

ActiveRecord::Schema.define(:version => 20130222204242) do

  create_table "admin_contacts", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "is_closed",  :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "admin_contacts", ["user_id"], :name => "admin_contacts_fk_admin_contact_user1_idx"

  create_table "answers", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.integer  "parent_id"
  end

  create_table "board_folders_products", :force => true do |t|
    t.boolean  "is_posessed", :default => false, :null => false
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "slug",        :null => false
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "categories", ["category_id"], :name => "categories_fk_category_category1_idx"

  create_table "censored_words", :force => true do |t|
    t.string   "value"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "slug",       :null => false
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["state_id"], :name => "cities_fk_city_state1_idx"

  create_table "cities_manufacturers", :force => true do |t|
    t.string   "name",                          :null => false
    t.string   "adress"
    t.decimal  "hq_lat"
    t.decimal  "hq_long"
    t.string   "web"
    t.text     "long_desc"
    t.date     "founded_at"
    t.date     "closed_at"
    t.string   "contact_phone"
    t.string   "contact_fax"
    t.string   "contact_email"
    t.integer  "owner_id"
    t.integer  "cover_id",                      :null => false
    t.integer  "user_id"
    t.integer  "manufacturer_id"
    t.string   "slug",                          :null => false
    t.string   "stock_ref",       :limit => 16
    t.float    "stock_value"
    t.string   "stock_dir"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "cities_pictures", :force => true do |t|
    t.string   "username",                                  :null => false
    t.string   "username_canonical",                        :null => false
    t.string   "email",                                     :null => false
    t.string   "email_canonical",                           :null => false
    t.integer  "enabled",                                   :null => false
    t.string   "salt",                                      :null => false
    t.string   "password",                                  :null => false
    t.datetime "last_login"
    t.integer  "locked",                                    :null => false
    t.integer  "expired",                                   :null => false
    t.datetime "expires_at"
    t.string   "confirmation_token",    :default => "NULL"
    t.datetime "password_requested_at"
    t.text     "roles",                                     :null => false
    t.integer  "credentials_expired",                       :null => false
    t.datetime "credentials_expire_at"
    t.integer  "avatar",                                    :null => false
    t.integer  "picture_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "cities_shops", :force => true do |t|
    t.string   "name"
    t.text     "long_desc"
    t.decimal  "coord_lat"
    t.decimal  "coord_long"
    t.integer  "main_shop_id"
    t.string   "web"
    t.string   "contact_phone"
    t.string   "contact_fax"
    t.string   "contact_email"
    t.integer  "user_id"
    t.string   "slug",          :null => false
    t.integer  "shop_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.string   "is_in_favor"
    t.integer  "cities_picture_id"
    t.integer  "comment_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "comments", ["cities_picture_id"], :name => "comments_fk_comment_user1_idx"
  add_index "comments", ["comment_id"], :name => "comments_fk_comment_comment1_idx"

  create_table "comparaisons", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.string   "slug"
    t.integer  "first_product_id"
    t.integer  "second_product_id"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "updated_at",        :null => false
  end

  create_table "comparaisons_posts", :force => true do |t|
    t.integer  "value",           :null => false
    t.integer  "product_id"
    t.integer  "user_id",         :null => false
    t.integer  "manufacturer_id"
    t.integer  "comparaison_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "comparaisons_products", :force => true do |t|
    t.integer  "manufacturer_id"
    t.integer  "product_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "config_types", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "slug",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "configs", :force => true do |t|
    t.string   "value_name"
    t.text     "value"
    t.integer  "config_type_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "configs", ["config_type_id"], :name => "configs_fk_config_config_type1_idx"

  create_table "countries", :force => true do |t|
    t.string   "name",         :null => false
    t.text     "languages"
    t.string   "ref"
    t.decimal  "coord_lat"
    t.decimal  "coord_long"
    t.integer  "phone_prefix"
    t.integer  "currency_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "countries", ["currency_id"], :name => "countries_fk_country_currency1_idx"

  create_table "currencies", :force => true do |t|
    t.string   "ref",          :null => false
    t.float    "value_to_usd", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "currencies_manufacturers", :force => true do |t|
    t.decimal  "amount"
    t.date     "available_until"
    t.boolean  "is_limited"
    t.integer  "currency_id"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "feedbacks", :force => true do |t|
    t.string   "label"
    t.text     "content"
    t.string   "is_fixed"
    t.integer  "user_id"
    t.integer  "fixed_by_id"
    t.datetime "fixed_at"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "feedbacks", ["fixed_by_id"], :name => "feedbacks_fk_feedback_user2_idx"
  add_index "feedbacks", ["user_id"], :name => "feedbacks_fk_feedback_user1_idx"

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

  create_table "manufacturers_shops", :force => true do |t|
    t.date     "purchased_at",    :null => false
    t.integer  "manufacturer_id"
    t.integer  "shop_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "messages", :force => true do |t|
    t.string   "subject"
    t.text     "content"
    t.boolean  "is_seen"
    t.integer  "sender_id"
    t.integer  "reciever_id"
    t.integer  "first_delete_id"
    t.integer  "second_delete_id"
    t.integer  "message_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "messages", ["first_delete_id"], :name => "messages_fk_message_user3_idx"
  add_index "messages", ["message_id"], :name => "messages_fk_message_message1_idx"
  add_index "messages", ["reciever_id"], :name => "messages_fk_message_user2_idx"
  add_index "messages", ["second_delete_id"], :name => "messages_fk_message_user4_idx"
  add_index "messages", ["sender_id"], :name => "messages_fk_message_user1_idx"

  create_table "notifications", :force => true do |t|
    t.string   "content",    :null => false
    t.string   "link",       :null => false
    t.integer  "type",       :null => false
    t.datetime "view_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pictures", :force => true do |t|
    t.string   "path",                               :null => false
    t.string   "mime_type",                          :null => false
    t.datetime "uploaded_at",                        :null => false
    t.string   "label",                              :null => false
    t.text     "description",    :default => "NULL"
    t.string   "file_size",                          :null => false
    t.integer  "is_used",                            :null => false
    t.integer  "width",                              :null => false
    t.integer  "height",                             :null => false
    t.text     "xiff",           :default => "NULL"
    t.text     "credentials",    :default => "NULL"
    t.boolean  "is_highlighted", :default => false,  :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "pictures_users", :force => true do |t|
    t.string   "name"
    t.integer  "cover_id",   :null => false
    t.integer  "picture_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title",                     :null => false
    t.text     "content",                   :null => false
    t.integer  "user_id"
    t.integer  "score"
    t.integer  "type",       :default => 0, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "posts", ["user_id"], :name => "posts_fk_post_user1_idx"

  create_table "products", :force => true do |t|
    t.string   "name",              :null => false
    t.string   "refname"
    t.date     "released_at"
    t.text     "long_desc"
    t.integer  "manufacturer_id"
    t.integer  "cities_picture_id"
    t.integer  "product_id"
    t.string   "slug",              :null => false
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "products", ["cities_picture_id"], :name => "products_fk_product_user1_idx"
  add_index "products", ["product_id"], :name => "products_fk_product_product1_idx"

  create_table "products_shops", :force => true do |t|
    t.integer  "supply_count"
    t.integer  "shop_id"
    t.integer  "product_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
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

  create_table "specifications", :force => true do |t|
    t.string   "value_name",       :null => false
    t.string   "shown_value",      :null => false
    t.integer  "ref_value",        :null => false
    t.integer  "product_id"
    t.date     "model_date"
    t.integer  "specification_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "specifications", ["product_id"], :name => "specifications_fk_specification_product1_idx"
  add_index "specifications", ["specification_id"], :name => "specifications_fk_specification_specification1_idx"

  create_table "states", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "slug",       :null => false
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "states", ["country_id"], :name => "states_fk_state_country1_idx"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "username_canonical"
    t.string   "email"
    t.string   "email_canonical"
    t.integer  "enabled"
    t.string   "salt"
    t.string   "password"
    t.datetime "last_login"
    t.integer  "locked"
    t.integer  "expired"
    t.datetime "expires_at"
    t.string   "confirmation_token"
    t.datetime "password_requested_at"
    t.text     "roles"
    t.integer  "credentials_expired"
    t.datetime "credentials_expire_at"
    t.integer  "avatar"
    t.integer  "country_id"
    t.integer  "currency_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
