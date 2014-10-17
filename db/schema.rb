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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141017112506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "company_name",                                      default: "", null: false
    t.decimal  "company_cash",             precision: 12, scale: 2
    t.integer  "company_portfolios_count",                          default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_owners", force: true do |t|
    t.integer  "company_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_owners", ["company_id"], name: "index_company_owners_on_company_id", using: :btree
  add_index "company_owners", ["user_id"], name: "index_company_owners_on_user_id", using: :btree

  create_table "company_portfolios", force: true do |t|
    t.integer  "portfolio_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_portfolios", ["company_id"], name: "index_company_portfolios_on_company_id", using: :btree
  add_index "company_portfolios", ["portfolio_id"], name: "index_company_portfolios_on_portfolio_id", using: :btree

  create_table "portfolios", force: true do |t|
    t.string   "portfolio_name",                           default: "",  null: false
    t.decimal  "portfolio_value", precision: 12, scale: 2, default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchased_shares", force: true do |t|
    t.integer  "share_id"
    t.integer  "user_id"
    t.decimal  "purchased_price", precision: 6, scale: 2, default: 1.0, null: false
    t.decimal  "selling_price",   precision: 6, scale: 2, default: 1.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchased_shares", ["share_id"], name: "index_purchased_shares_on_share_id", using: :btree
  add_index "purchased_shares", ["user_id"], name: "index_purchased_shares_on_user_id", using: :btree

  create_table "share_daily_statistics", force: true do |t|
    t.integer  "share_id"
    t.date     "date"
    t.decimal  "day_high",   precision: 6, scale: 2, default: 1.0, null: false
    t.decimal  "day_low",    precision: 6, scale: 2, default: 1.0, null: false
    t.integer  "volume",                             default: 0,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "share_daily_statistics", ["share_id"], name: "index_share_daily_statistics_on_share_id", using: :btree

  create_table "shares", force: true do |t|
    t.string   "share_name",                                           default: "",  null: false
    t.string   "share_symbol"
    t.decimal  "initial_price",                precision: 6, scale: 2, default: 1.0, null: false
    t.decimal  "share_price",                  precision: 6, scale: 2, default: 1.0, null: false
    t.integer  "purchased_shares_count",                               default: 0,   null: false
    t.integer  "share_daily_statistics_count",                         default: 0,   null: false
    t.integer  "trades_count",                                         default: 0,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trader_portfolios", force: true do |t|
    t.integer  "portfolio_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trader_portfolios", ["portfolio_id"], name: "index_trader_portfolios_on_portfolio_id", using: :btree
  add_index "trader_portfolios", ["user_id"], name: "index_trader_portfolios_on_user_id", using: :btree

  create_table "trades", force: true do |t|
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.integer  "share_id"
    t.integer  "trade_quantity",                         default: 1,   null: false
    t.decimal  "share_price",    precision: 6, scale: 2, default: 1.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trades", ["buyer_id"], name: "index_trades_on_buyer_id", using: :btree
  add_index "trades", ["seller_id"], name: "index_trades_on_seller_id", using: :btree
  add_index "trades", ["share_id"], name: "index_trades_on_share_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                                              default: "",  null: false
    t.string   "encrypted_password",                                 default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                      default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",                                  default: 0
    t.decimal  "cash",                      precision: 12, scale: 2, default: 0.0, null: false
    t.integer  "purchased_shares_count",                             default: 0,   null: false
    t.integer  "selling_trades_count",                               default: 0,   null: false
    t.integer  "buying_trades_count",                                default: 0,   null: false
    t.integer  "trader_portfolios_count",                            default: 0,   null: false
    t.integer  "wishlist_portfolios_count",                          default: 0,   null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "versions", force: true do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

  create_table "wishlist_shares", force: true do |t|
    t.integer  "share_id"
    t.integer  "user_id"
    t.decimal  "buying_price", precision: 6, scale: 2, default: 1.0, null: false
    t.decimal  "sold_price",   precision: 6, scale: 2, default: 1.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wishlist_shares", ["share_id"], name: "index_wishlist_shares_on_share_id", using: :btree
  add_index "wishlist_shares", ["user_id"], name: "index_wishlist_shares_on_user_id", using: :btree

end
