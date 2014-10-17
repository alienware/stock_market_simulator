class AddCounterCacheColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :purchased_shares_count, :integer, null: false, default: 0
    add_column :users, :selling_trades_count, :integer, null: false, default: 0
    add_column :users, :buying_trades_count, :integer, null: false, default: 0
    add_column :users, :trader_portfolios_count, :integer, null: false, default: 0
    add_column :users, :wishlist_portfolios_count, :integer, null: false, default: 0
  end
end
