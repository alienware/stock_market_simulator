class CreatePurchasedShares < ActiveRecord::Migration
  def change
    create_table :purchased_shares do |t|
      t.references :share, index: true
      t.references :user, index: true
      t.decimal :purchased_price, precision: 6, scale: 2, null: false, default: 1.00
      t.decimal :selling_price, precision: 6, scale: 2, null: false, default: 1.00
      t.timestamps
    end
  end
end
