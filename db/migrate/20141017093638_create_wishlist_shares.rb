class CreateWishlistShares < ActiveRecord::Migration
  def change
    create_table :wishlist_shares do |t|
      t.references :share, index: true
      t.references :user, index: true
      t.decimal :buying_price, precision: 6, scale: 2, null: false, default: 1.00
      t.decimal :sold_price, precision: 6, scale: 2, null: false, default: 1.00
      t.timestamps
    end
  end
end
