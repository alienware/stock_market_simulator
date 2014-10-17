class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :share_name, null: false, default: ''
      t.string :share_symbol
      t.decimal :initial_price, precision: 6, scale: 2, null: false, default: 1.00
      t.decimal :share_price, precision: 6, scale: 2, null: false, default: 1.00
      t.integer :purchased_shares_count, null: false, default: 0
      t.integer :share_daily_statistics_count, null: false, default: 0
      t.integer :trades_count, null: false, default: 0
      t.timestamps
    end
  end
end
