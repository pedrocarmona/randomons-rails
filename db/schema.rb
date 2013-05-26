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

ActiveRecord::Schema.define(:version => 20130526205624) do

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

  create_table "creatures", :force => true do |t|
    t.integer  "specie_id",                           :null => false
    t.string   "name",                                :null => false
    t.float    "hitpoints",                           :null => false
    t.float    "attack",                              :null => false
    t.float    "defense",                             :null => false
    t.float    "speed",                               :null => false
    t.float    "growth",             :default => 0.0, :null => false
    t.integer  "level",              :default => 1,   :null => false
    t.float    "current_hitpoints",                   :null => false
    t.float    "current_experience", :default => 0.0, :null => false
    t.integer  "status",             :default => 0,   :null => false
    t.float    "preference",         :default => 0.0, :null => false
    t.integer  "user_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "items", :force => true do |t|
    t.integer  "specie_id"
    t.string   "name",                      :null => false
    t.integer  "price",      :default => 0, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "items", ["specie_id"], :name => "index_items_on_specie_id"

  create_table "moves", :force => true do |t|
    t.string   "name",                                  :null => false
    t.text     "move_types",                            :null => false
    t.float    "attack",                                :null => false
    t.float    "accuracy",           :default => 100.0, :null => false
    t.integer  "status"
    t.float    "status_probability", :default => 0.0,   :null => false
    t.text     "description"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "populations", :force => true do |t|
    t.integer  "specie_id",  :null => false
    t.float    "latitude",   :null => false
    t.float    "longitude",  :null => false
    t.float    "radius",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "specie_moves", :force => true do |t|
    t.integer  "specie_id",                 :null => false
    t.integer  "move_id",                   :null => false
    t.integer  "level",      :default => 1, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "specie_moves", ["move_id"], :name => "index_specie_moves_on_move_id"
  add_index "specie_moves", ["specie_id"], :name => "index_specie_moves_on_specie_id"

  create_table "species", :force => true do |t|
    t.string   "name",                               :null => false
    t.float    "base_hitpoints",                     :null => false
    t.float    "base_attack",                        :null => false
    t.float    "base_defense",                       :null => false
    t.float    "base_speed",                         :null => false
    t.text     "specie_types",                       :null => false
    t.integer  "experience_function", :default => 0, :null => false
    t.text     "description"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "species", ["name"], :name => "index_species_on_name", :unique => true

  create_table "user_items", :force => true do |t|
    t.integer  "user_id",                   :null => false
    t.integer  "item_id",                   :null => false
    t.integer  "quantity",   :default => 1, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "user_items", ["user_id"], :name => "index_user_items_on_user_id"

  create_table "users", :force => true do |t|
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
    t.string   "authentication_token"
    t.string   "name",                   :default => "", :null => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
