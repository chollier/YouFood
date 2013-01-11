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

ActiveRecord::Schema.define(:version => 20120619111115) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "cuisines", :force => true do |t|
    t.integer  "dinning_room_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "name"
  end

  add_index "cuisines", ["dinning_room_id"], :name => "index_cuisines_on_dinning_room_id"

  create_table "deserts", :force => true do |t|
    t.string   "name"
    t.string   "food_type"
    t.integer  "food_menu_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "description"
    t.float    "price"
  end

  create_table "dinning_rooms", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dishes", :force => true do |t|
    t.string   "name"
    t.string   "food_type"
    t.integer  "food_menu_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "description"
    t.float    "price"
  end

  create_table "food_menus", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "is_active"
  end

  create_table "orders", :force => true do |t|
    t.boolean  "taken"
    t.boolean  "ready"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "table_id"
  end

  create_table "orders_deserts", :force => true do |t|
    t.integer "order_id"
    t.integer "desert_id"
    t.integer "quantity"
    t.boolean "taken",     :default => false
    t.boolean "ready",     :default => false
  end

  create_table "orders_dishes", :force => true do |t|
    t.integer "order_id"
    t.integer "dish_id"
    t.integer "quantity"
    t.boolean "taken",    :default => false
    t.boolean "ready",    :default => false
  end

  create_table "orders_starters", :force => true do |t|
    t.integer "order_id"
    t.integer "starter_id"
    t.integer "quantity"
    t.boolean "taken",      :default => false
    t.boolean "ready",      :default => false
  end

  create_table "room_zones", :force => true do |t|
    t.string   "name"
    t.integer  "dinning_room_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "starters", :force => true do |t|
    t.string   "name"
    t.string   "food_type"
    t.integer  "food_menu_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "description"
    t.float    "price"
  end

  create_table "tables", :force => true do |t|
    t.integer  "capacity"
    t.integer  "room_zone_id"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "waiters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "room_zone_id"
  end

end
